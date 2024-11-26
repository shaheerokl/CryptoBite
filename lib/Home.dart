import 'dart:ui';

import 'package:crypto_bite/Person_Over_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bottom_Navigtion.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


    extendBody: true,
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        toolbarHeight: 70.h,
        backgroundColor: Color(0xff181818),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w, top: 20.h),
          child: Image.asset(
            "assets/splash dp.png",
          ),
        ),
        leadingWidth: 120.w,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w, top: 20.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 25.sp,
                ),
                Positioned(
                  top: 10,
                  bottom: null,
                  right: null,
                  left: null,
                  child: CircleAvatar(
                    radius: 4.r,
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 16.w, left: 16.w),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff1B1B1B),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7D7D7D)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20.sp,
                  )),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(

                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: GestureDetector(onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonOverView()));
                        },
                          child: Container(
                            height: 200.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                                color: Color(0xff131313),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18.r))),
                            child: Padding(
                              padding: EdgeInsets.only(
                          
                                top: 10.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    leading: Container(height: 40.h,width: 40.w,
                                      child: Image.asset("assets/crypto2.png",),
                                    ),
                                    title: Text(
                                      "Income _source",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize:14.sp,
                                          color: Color(0xffFAFAFA)),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Icon(
                                          Icons.stars_rounded,
                                          size: 17.sp,
                                          color: Colors.green,
                                        ),
                                        Text("High achiever", style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Color(0xff9E9E9E)),),
                                      ],
                                    ),
                                    trailing: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(60.w, 30.h),
                                            backgroundColor: Color(0xff7E57C2)),
                                        onPressed: () {}, child: Text("follow",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        color: Colors.white),)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.w,right: 16.w),
                                    child: Divider(
                                      thickness: 1,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(left: 16.w,right: 16.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Gain",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10.sp,
                                                color: Color(0xff616161)),),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text("24.76%",  style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.sp,
                                                color: Color(0xff008A0E)),)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Copiers",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10.sp,
                                                color: Color(0xff616161))),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text("95",  style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.sp,
                                                color: Color(0xffFAFAFA)),)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Commission",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10.sp,
                                                color: Color(0xff616161))),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text("38%",  style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.sp,
                                                color: Color(0xffFAFAFA)),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.w,),
                                    child: Text("Profit and loss",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        color: Color(0xff616161))),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(left: 16.w,right: 16.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("\$ 7135.01",  style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color: Color(0xffFAFAFA)),),
                                        Text("\$ 0.00",  style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color: Color(0xffFAFAFA)),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Divider(
                                    indent: 16.w,
                                    endIndent: 16.w,
                                    thickness: 3,
                                    color: Color(0xff388E3C),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

