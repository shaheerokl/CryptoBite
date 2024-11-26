import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:animation_custom_tabbar/animation_custom_tabbar.dart';

import 'Copiers.dart';
import 'TabBar.dart';

class PersonOverView extends StatefulWidget {
  const PersonOverView({super.key});

  @override
  State<PersonOverView> createState() => _PersonOverViewState();
}

class _PersonOverViewState extends State<PersonOverView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        toolbarHeight: 70.h,
        backgroundColor: Color(0xff181818),
        leading: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, right: 10.w),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.share_outlined),
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding:EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                height: 50.h,
                width: 50.w,
                child: Image.asset(
                  "assets/crypto1.png",
                ),
              ),
              title: Text(
                "BGUSER -H3LA8VRR",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Color(0xffFFFFFF)),
              ),
              subtitle: Text(
                "@BGUSER -H3LA8VRR",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xff515151)),
              ),
              trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(60.w, 30.h),
                      backgroundColor: Color(0xff7E57C2)),
                  onPressed: () {},
                  child: Text(
                    "follow",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.sp,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 160.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff131313),
                  borderRadius: BorderRadius.all(Radius.circular(8.r))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "equity (USDT)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff797979)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "******",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffFAFAFA)),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Trading freq)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff797979)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffFAFAFA)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "total orders)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff797979)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "298",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffFAFAFA)),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Profit-sharing ratio)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff797979)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "12%",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffFAFAFA)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "days joined)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff797979)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "1,136",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffFAFAFA)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 30.h,
              width: 220.w,
              child: TabBar(
                  indicatorColor: Color(0xff28DAA6),
                  controller: _controller,
                  dividerColor: Color(0xff616161),
                  unselectedLabelColor: Color(0xff616161),
                  labelColor: Colors.white,
                  dividerHeight: 0.5.h,
                  
                  tabs: [
                    Tab(
                      text: "Overview",
                    ),
                    Tab(
                      text: "orders",
                    ),
                    Tab(
                      text: "Copiers",
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: _controller, children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Asset allocation",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color(0xffFFFFFF)),
                            ),
                            Icon(
                              Icons.info_outline_rounded,
                              size: 15.sp,
                              color: Color(0xff616161),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Last 7 days",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color(0xff616161)),
                            ),
                            Icon(Icons.arrow_drop_down,
                                size: 25.sp, color: Color(0xff616161))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CircularPercentIndicator(
                      radius: 90.r,
                      backgroundColor: Color(0xff7E57C2),
                      percent: 0.6,
                      lineWidth: 25.w,
                      progressColor: Color(0xff28DAA6),
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("CRIPTOBITE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color(0xff616161))),
                          Text(
                            "57.15%",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp,
                                color: Color(0xffFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 15.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.w,
                                            color: Color(0xff616161)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.r))),
                                    child: Center(
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff7E57C2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100.r))),
                                      ),
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text("CRIPTOBITE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Color(0xff616161))),
                              ],
                            ),
                            Text(
                              "57.15%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Color(0xffFAFAFA)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 15.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.w,
                                            color: Color(0xff616161)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.r))),
                                    child: Center(
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff28DAA6),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100.r))),
                                      ),
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text("CRIPTOBITE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Color(0xff616161))),
                              ],
                            ),
                            Text(
                              "42.85%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Color(0xffFAFAFA)),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Tabbar(),

                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),

                    Copiers()
                  ],
                ),

              ]),
            )
          ],
        ),
      ),
    );
  }
}
