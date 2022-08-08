import 'package:flutter/material.dart';
import 'package:uvc_admin_panel/constants/color_constants.dart';
import 'package:uvc_admin_panel/constants/font_size_constants.dart';
import 'package:uvc_admin_panel/constants/loginpage_text.dart';
import 'package:uvc_admin_panel/constants/padding_constants.dart';
import 'package:uvc_admin_panel/constants/radius_constants.dart';
import '../core/bottom_button.dart';
import '../core/custom_button.dart';
import '../product/login_page_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.loginPageColor,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildLoginText_Image(context),
            buildTextField_LoginButton(context)
          ],
        ),
      ),
    );
  }

  Stack buildTextField_LoginButton(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.65,
          decoration: BoxDecoration(
            color: ColorConstants.loginPageColor2,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(ProjectRadiuses.stackRadius),
              topLeft: Radius.circular(ProjectRadiuses.stackRadius),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(ProjectPaddings.bottomButtonPadding2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                Image.asset(
                  LoginPageText.anaLogo,
                  scale: 1.2,
                ),
                const Spacer(
                  flex: 3,
                ),
                Text(
                  LoginPageText.login,
                  style: TextStyle(
                    color: ColorConstants.blackColor,
                    fontSize: FontSizes.bigTextFont,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                LoginPageTextField(
                  hintText: LoginPageText.email,
                ),
                const Spacer(
                  flex: 1,
                ),
                LoginPageTextField(hintText: LoginPageText.password),
                const Spacer(flex: 2),
                CustomButton(
                    height: 40,
                    width: 0.4,
                    buttonColor: ColorConstants.loginPageColor,
                    textColor: ColorConstants.whiteColor,
                    buttonText: LoginPageText.login,
                    fontSize: FontSizes.loginTextFont,
                    fontWeight: FontWeight.w900),
                const Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BottomButton(
                      buttonIcon: Icons.settings_sharp,
                      iconColor: ColorConstants.whiteColor,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(ProjectPaddings.bottomButtonPadding2),
                      child: BottomButton(
                        buttonIcon: Icons.help_outline_sharp,
                        iconColor: ColorConstants.whiteColor,
                      ),
                    ),
                    BottomButton(
                      buttonIcon: Icons.phone_outlined,
                      iconColor: ColorConstants.whiteColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  SizedBox buildLoginText_Image(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(LoginPageText.bigText,
              style: TextStyle(
                fontSize: FontSizes.bigTextFont,
                fontWeight: FontWeight.bold,
                color: ColorConstants.whiteColor,
              )),
          Image.asset(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.35,
            LoginPageText.pervane,
            color: ColorConstants.whiteColor,
          ),
        ],
      ),
    );
  }
}
