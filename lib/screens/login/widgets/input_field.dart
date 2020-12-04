import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  InputField({this.hint, this.obscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white70,
            width: 1.0,
          ),
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(color: Colors.white70),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white70,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white70, fontSize: 15.0),
          contentPadding: EdgeInsets.only(
            top: 30.0,
            right: 30.0,
            bottom: 30.0,
            left: 5.0,
          ),
        ),
      ),
    );
  }
}
