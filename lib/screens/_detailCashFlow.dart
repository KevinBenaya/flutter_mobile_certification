import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/screens/tambah_pemasukkan.dart';
import 'package:flutter_mobile_certification/screens/tambah_pengeluaran.dart';

class DetailCashFlow extends StatefulWidget {
  

  @override
  State<DetailCashFlow> createState() => _DetailCashFlowState();
}

class _DetailCashFlowState extends State<DetailCashFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Detail Flow Cash"),
       ),
       body: 
        Card(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.arrow_back,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                   "[-] Rp. 250.000",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Contoh Pengeluaran"),
                  onTap: () {},
                ),
                Divider(
                  height: 5.0,
                ),
              ],
            );
          },
        ),
      ),
    ),
    );
  }
}