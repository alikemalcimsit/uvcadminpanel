import 'package:flutter/material.dart';

class LoginPageTextField extends StatelessWidget {
  String hintText;
  LoginPageTextField({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 30,
      child: TextField(
          decoration: InputDecoration(
        hintText: hintText,
      )),
    );
  }
}
