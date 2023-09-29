import 'package:flutter/material.dart';
class getTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintName;
  final IconData icon;
  final bool isObscureText;
  final TextInputType inputType;


  getTextFormField(
    {required this.controller, 
    required this.hintName, 
    required this.icon, 
    this.isObscureText = false, 
    this.inputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 
        EdgeInsets.symmetric(horizontal: 30.0),
          margin: EdgeInsets.only(top: 20.0),
          child: TextFormField( 
            controller: controller,
            obscureText: isObscureText,
            keyboardType: TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.blue),
          ),
          prefixIcon: Icon(icon),
          hintText: hintName,
          fillColor: Colors.white38,
          filled: true,
        ),
      ),
    );
  }
}