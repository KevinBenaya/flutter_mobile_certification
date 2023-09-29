import 'package:flutter/material.dart';
import 'package:flutter_mobile_certification/screens/_loginWithoutDB.dart';
//import 'package:flutter_mobile_certification/screens/_home.dart';
//import 'package:flutter_mobile_certification/screens/_detailCashFlow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Certification',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: loginwithoutDB(),
    );
  }
}
