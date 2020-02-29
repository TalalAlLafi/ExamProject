import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  final IconData icon;
  final String hintText;

  const LogIn({Key key, this.icon, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            suffixIcon: Icon(icon),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
