import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../constants/radius_constants.dart';

class BottomButton extends StatelessWidget {
  IconData buttonIcon;
  Color iconColor;
  BottomButton({
    required IconData this.buttonIcon,
    required this.iconColor,
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(ProjectRadiuses.bottomButtonRadius)),
            color: ColorConstants.loginPageColor),
        child: Icon(
          buttonIcon,
          color: iconColor,
        ));
  }
}
