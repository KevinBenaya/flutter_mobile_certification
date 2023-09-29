import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/screens/_home.dart';
import 'package:intl/intl.dart';


class tambah_pengeluaran extends StatefulWidget {

  @override
  State<tambah_pengeluaran> createState() => _tambah_pengeluaranState();
}

class _tambah_pengeluaranState extends State<tambah_pengeluaran> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Pengeluaran', style: TextStyle(color: Colors.red,),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(right: 480),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                      Text('Tanggal:', style: TextStyle(color: Colors.black, 
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
                    controller: dateController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),          
                      fillColor: Colors.white38,
                      filled: true,
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                      context: context,
                       initialDate: DateTime.now(), //get today's date
                      firstDate:DateTime(2000), 
                      lastDate: DateTime(2050),
                      );
                      if(pickedDate!= null){
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate);
                        setState(() {
                         dateController.text = formattedDate.toString();  
                      });
                      } else {
                        print("Tidak dipilih");
                      }
                    }
                  ),
                  
                ),
                 SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(right: 480),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Text('Nominal:', style: TextStyle(color: Colors.black, 
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
          
                    decoration: InputDecoration(           
                      icon: Icon(Icons.currency_exchange),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    
                      fillColor: Colors.white38,
                      filled: true,
                    ),
                    
                  ),
                ),
              ],
            ),
              SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(right: 480),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Text('Keterangan:', style: TextStyle(color: Colors.black, 
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
                     
                    decoration: InputDecoration(
                      icon: Icon(Icons.details),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      fillColor: Colors.white38,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        
        SizedBox(height: 10),
        Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('Reset', style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => tambah_pengeluaran()));
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
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
                    color: Colors.pinkAccent,
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
                  
                ),
    );
  }
}