import 'dart:async';

import 'package:crypto_bite/LoginPage.dart';
import 'package:crypto_bite/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Color whiteText = Color(0xffFAFAFA);
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 50.h,
              width: 280.w,
              child: Image.asset("assets/splash dp.png"),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(textAlign: TextAlign.center,
            'Copy top traders and leverage their expertise\n to maximize your crypto portfolio',
            style: TextStyle(color: whiteText),
          )
        ],
      ),
    );
  }
}
