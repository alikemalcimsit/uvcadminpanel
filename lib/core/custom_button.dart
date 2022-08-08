import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double width;
  double height;
  Color buttonColor;
  String buttonText;
  Color textColor;
  double fontSize;
  FontWeight fontWeight;
  CustomButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.buttonColor,
      required this.buttonText,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * width,
        height: height,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
            ),
            onPressed: () {},
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            )));
  }
}
