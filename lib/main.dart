import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_1a/const/const.dart';
import 'pages/signin_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: KColor2,
      ),
      home: SignInPage(),
    );
  }
}
