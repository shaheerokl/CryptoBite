import 'package:crypto_bite/Home.dart';
import 'package:crypto_bite/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bottom_Navigtion.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool value=false;
  @override
  Widget build(BuildContext context) {

    Color bgcolor = const Color(0xff131313);
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Column(
        children: [
          SizedBox(
            height: 320.h,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius: BorderRadius.all(Radius.circular(30.r))),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFAFAFA)),
                    ),
                    Text(
                      "Enter your user name to login for this app",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff616161)),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff1B1B1B),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Rahuljbg@523",
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7D7D7D)),
                          label: Text(
                            "UserName",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7D7D7D)),
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff1B1B1B),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "*******",
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7D7D7D)),
                          label: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7D7D7D)),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 20.sp,
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        textAlign: TextAlign.end,
                        "forget password",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7D7D7D)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 40.h),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r))),
                            backgroundColor: Color(0xff7E57C2)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GlassmorphismBottomNavigationBar()));
                        },
                        child: Text("Login",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF)))),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Checkbox(
                          activeColor: Color(0xff7E57C2) ,
                          checkColor: Colors.white,
                          value: value,
                          onChanged: (bool? newValue) {
                            setState(() {
                              value = newValue!;
                            });
                          },
                        ),
                        SizedBox(width: 5.w,),
                        RichText(text: TextSpan(style: TextStyle(height: 1.5.h, fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7D7D7D)),

                          children: [
                            TextSpan(
                              text: "I under stand that Cryptooly cannot recover this\n"
                            ),
                            TextSpan(text: "password for me."),
                            TextSpan(text: " Learn more",style: TextStyle( fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff28DAA6))),
                          ]
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
