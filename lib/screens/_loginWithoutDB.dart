import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/Comm/gen_textformfield.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_mobile_certification/screens/_home.dart';


class loginwithoutDB extends StatefulWidget {

  @override
  State<loginwithoutDB> createState() => _loginwithoutDBState();
}

class _loginwithoutDBState extends State<loginwithoutDB> {
  final _cUsername = TextEditingController();
  final _cPassword = TextEditingController();

  login() async {
    String? usrnm = _cUsername.text;
    String? pwd = _cPassword.text;

    if(usrnm.isEmpty){
     Fluttertoast.showToast(
      msg: 'Masukkan Username',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      textColor: Colors.black,
      fontSize: 16.0 
     );
    } else if (pwd.isEmpty) {
      Fluttertoast.showToast(
      msg: 'Masukkan Password',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      textColor: Colors.black,
      fontSize: 16.0 
     );
    } else {
      if (usrnm == 'kbenaya25' && pwd == 'KevinBenaya25') {
        Navigator.push(
          context,
           MaterialPageRoute(builder: (_) => Home()));
          } else {
         Fluttertoast.showToast(
      msg: 'Login Gagal!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      textColor: Colors.black,
      fontSize: 16.0 
     );
        }
      }
    }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0),
                Image.network("https://png.pngtree.com/png-vector/20190827/ourlarge/pngtree-book-cash-money-novel-blue-dotted-line-line-icon-png-image_1700552.jpg",
                height: 200,
                width: 200,),
                SizedBox(height: 50.0),
                Text(
                  'MyCashBook v1.0',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30.0),
                ),
                SizedBox(height: 10.0),
                getTextFormField(
                  controller: _cUsername,
                  icon: Icons.person,
                  hintName: 'Username',
                ),
                SizedBox(height: 10.0),
                getTextFormField(
                  controller: _cPassword,
                  icon: Icons.lock,
                  hintName: 'Password',
                  isObscureText: true,
                ),
                                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  margin: EdgeInsets.only(top: 20.0, left: 35.0, right: 35.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('Login', style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){
                      login();
            
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                 SizedBox(height: 100.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}