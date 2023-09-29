import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/screens/_home.dart';
import 'package:intl/intl.dart';
import 'package:flutter_mobile_certification/models/_pemasukkan.dart';

class tambah_pemasukkan extends StatefulWidget {


  @override
  State<tambah_pemasukkan> createState() => _tambah_pemasukkanState();
  }


class _tambah_pemasukkanState extends State<tambah_pemasukkan> {
  Pemasukkan _pemasukkan = Pemasukkan();
  List<Pemasukkan> _pmsukan = [];
  TextEditingController dateController = TextEditingController();
  final _ctrlPemasukkanKeterangan = TextEditingController();
  final _ctrlPemasukkanNominal = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  _onSubmit(){
    var form = _formKey.currentState;
  if (form!.validate()) {
    form.save();
    print('''
    [+] Rp. ${_pemasukkan.nominal}
    ${_pemasukkan.keterangan}
    ${_pemasukkan.date}
    ''');
    _pmsukan.add(Pemasukkan(nominal: _pemasukkan.nominal, keterangan: _pemasukkan.keterangan, date: _pemasukkan.date));
    form.reset();
    }
  }

  _list() => Expanded(
    child: Card(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.arrow_right,
                    color: Colors.green,
                    size: 40.0,
                  ),
                  title: Text(
                    _pmsukan[index].nominal!.toUpperCase(),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(_pmsukan[index].keterangan!.toUpperCase()),
                  onTap: () {},
                ),
                Divider(
                  height: 5.0,
                ),
              ],
            );
          },
          itemCount: _pmsukan.length,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Pemasukkan', style: TextStyle(color: Colors.green,),
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
                    validator: (val) =>
                  (val?.length == 0 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _pemasukkan.date = val as DateTime?),
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
                  controller: _ctrlPemasukkanNominal,
                  validator: (val) =>
                  (val?.length == 0 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _pemasukkan.nominal = val as String?),
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
                  controller: _ctrlPemasukkanKeterangan,
                  validator: (val) =>
                  (val?.length == 0 ? 'This field is mandatory' : null),
                  onSaved: (val) => setState(() => _pemasukkan.keterangan = val as String?),
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
                            MaterialPageRoute(builder: (_) => tambah_pemasukkan()));
                    
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
                    onPressed: () =>_onSubmit(),
                  
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