import 'package:flutter/material.dart';
import 'package:login_ui_1a/model/clip_shadow.dart';
import 'package:login_ui_1a/widegits/build_textfiled.dart';
import 'package:login_ui_1a/widegits/custom_clip.dart';
import 'package:login_ui_1a/widegits/parallelogram.dart';
import '../const/const.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool b1 = true,b2 = true , b3 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KScaffoldColor,
      body: ListView(
        padding: EdgeInsets.only(
            top: size.width * 0.2,
            left: size.width *0.11,
            right: size.width *0.11
        ),
        children: [
          Image(
            image: AssetImage('assets/images/logo.png'),
            height: size.width * 0.3,
          ),
          Text('SIMSLEEV',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: size.width * 0.08,
                  color: KColor1,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.8)),
          SizedBox(
            height: size.width * 0.05,
          ),
          BuildTextFiled(size: size,text: '  Username',icon: Icons.person_outline,isBorder: b1,),
          BuildTextFiled(size: size,text: '  Passcode',icon: Icons.lock_outline,isBorder: b2),
          BuildTextFiled(size: size,text: '  Verify Passcode',icon: Icons.lock_outline,isBorder: b3),
          Parallelogram(
            cutLength: 20.0,
            edge: Edge.RIGHT,
            clipShadows: [ClipShadow(color: Colors.transparent)],
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(
                top: size.width * 0.1,
                bottom: size.width * 0.065,
              ),
              height: size.width * 0.14,
              decoration: BoxDecoration(color: KColor1, boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(16), offset: Offset(19, 14))
              ]),
              child: Center(
                child: Text(
                  'GO!',
                  style: TextStyle(
                    fontSize: size.width * 0.055,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    color: Color(0xfff5f5f5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: size.width *0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I am already a member', style: TextStyle(
                fontSize: size.width * 0.05,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
                color: Color(0xfff5f5f5),
              ),),
              TextButton(onPressed: (){
                Navigator.pop(context);
              },child: Text('SIGN IN', style: TextStyle(
                fontSize: size.width * 0.055,
                fontWeight: FontWeight.w900,
                color: KColor1,
              ),),)
            ],
          )
        ],
      ),
    );
  }
}
