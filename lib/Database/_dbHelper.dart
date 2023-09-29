import 'package:flutter_mobile_certification/models/_user.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _db;

  static const String _dbName = 'mobile.db';
  static const String _tabelUser = 'user';
  static const int Version = 1;

  static const String _cUsername = 'user_name';
   static const String _cPassword = 'password';

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $_tabelUser ("
        " $_cUsername TEXT, "
        " $_cPassword TEXT, "
        " PRIMARY KEY ($_cUsername)"
        ")");
  }

  Future<int> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(_tabelUser, user.toMap());
    return res;
  }

  Future<UserModel?> getLoginUser(String userName, String password) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $_tabelUser WHERE "
        "$_cUsername = '$userName' AND "
        "$_cPassword = '$password'");

    if (res.length > 0) {
      return UserModel.fromMap(res.first);
    }

    return null;
  }

  Future<int> updateUser(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.update(_tabelUser, user.toMap(),
        where: '$_cUsername = ?', whereArgs: [user.user_name]);
    return res;
  }

  Future<int> deleteUser(String user_name) async {
    var dbClient = await db;
    var res = await dbClient
        .delete(_tabelUser, where: '$_cUsername = ?', whereArgs: [user_name]);
    return res;
  }
}