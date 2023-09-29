import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/screens/_home.dart';

class settings extends StatefulWidget {

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
        ),
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
          Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(right: 480),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Positioned(
                      left: 30,
                      child: Text('Ganti Password', style: TextStyle(color: Colors.black, 
                      fontSize: 15, 
                      decoration: TextDecoration.underline),
                                      ),
                    ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 465),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password Saat Ini', style: TextStyle(color: Colors.black, 
                    fontSize: 15, 
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  margin: EdgeInsets.only(top: 5.0),
                  child: TextFormField(
                     obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      fillColor: Colors.white38,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
              margin: EdgeInsets.only(right: 480),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password Baru', style: TextStyle(color: Colors.black, 
                    fontSize: 15, 
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  margin: EdgeInsets.only(top: 5.0),
                  child: TextFormField(
                     obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      fillColor: Colors.white38,
                      filled: true,
                    ),
                  ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('Simpan', style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (){},
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
                Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('<< Kembali', style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Home()));
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
                  ],
                ),
                SizedBox(height: 50,
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ink.image(image: NetworkImage('https://media.licdn.com/dms/image/D4E03AQGwjhyO9uSN8g/profile-displayphoto-shrink_800_800/0/1679800626152?e=2147483647&v=beta&t=4GDX9fTTVckRtIk4N4FlhL3k8L8_eL0joVaG2V3d_t0'),
                    height: 200,
                    width: 200, fit: BoxFit.cover),
                    SizedBox(height: 10),
                        Column(
                          children: [
                            Text('About This App.',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                                Text('Aplikasi ini dibuat oleh:',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                            Text('Nama: Kevin Benaya Sava Nugraha',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                            Text('NIM: 2141764125',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                            Text('Tanggal: 29 September 2023',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                          ],
                        ),
                            
                  ],
                  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}