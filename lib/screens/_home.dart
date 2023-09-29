import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/screens/tambah_pemasukkan.dart';
import 'package:flutter_mobile_certification/screens/tambah_pengeluaran.dart';
import 'package:flutter_mobile_certification/screens/_settings.dart';
import 'package:flutter_mobile_certification/screens/_detailCashFlow.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.0),
                Text(
                  'Rangkuman Bulan Ini',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                ),
                
                SizedBox(height: 20.0),
                Text(
                  'Pengeluaran: Rp. 250000',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Pemasukan: Rp.250000 ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black38,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => tambah_pemasukkan()));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 3),
                              ),
                              child: Ink.image(image: NetworkImage('https://static.thenounproject.com/png/4909976-200.png'),
                              height: 200, width: 200, fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                                  Text('Tambah Pemasukan',
                                  style: TextStyle(fontSize: 20, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black38,
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => tambah_pengeluaran()));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 3),
                              ),
                              child: Ink.image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/5414/5414636.png'),
                              height: 200, width: 200, fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                                  Text('Tambah Pengeluaran',
                                  style: TextStyle(fontSize: 20, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 30.0),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black38,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => DetailCashFlow()));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 3),
                              ),
                              child: Ink.image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/4149/4149652.png'),
                              height: 200, width: 200, fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                                  Text('Detail Cash Flow',
                                  style: TextStyle(fontSize: 20, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black38,
                        onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => settings()));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 3),
                              ),
                              child: Ink.image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2965/2965279.png'),
                              height: 200, width: 200, fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                                  Text('Pengaturan',
                                  style: TextStyle(fontSize: 20, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
