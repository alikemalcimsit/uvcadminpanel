import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uvc_admin_panel/screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'poppinsTextTheme',
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      title: 'uvc_admin_panel',
      home: LoginPage(),
    );
  }
}
