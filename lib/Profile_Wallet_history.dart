import 'package:crypto_bite/Copiers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWalletHistory extends StatelessWidget {
  const ProfileWalletHistory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/img6.png",
      "assets/imag1.png",
      "assets/img2.png",
      "assets/img3.png",
      "assets/img4.png",
      "assets/img5.png",
      "assets/img2.png",
      "assets/img3.png",
    ];
    return Scaffold(
        backgroundColor: Color(0xff131313),
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Total Profit",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                            color: Color(0xffFFFFFF))),
                    TextSpan(
                        text: " +\$2070.00",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                            color: Color(0xff008A0E))),
                  ])),
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
              SizedBox(height: 5.h),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Current profit ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff616161))),
                TextSpan(
                    text: " \$105.00",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Color(0xffFFFFFF)))
              ])),
              SizedBox(height: 20.h),
              Container(
                height: 450.h,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40.h,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      radius: 30.r,
                                      backgroundImage:
                                          AssetImage(image[index])),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Ethereum",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.sp,
                                              color: Color(0xffFFFFFF))),
                                      Text("ETH",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: Color(0xff515151))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$503.12",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  Text("50 ETH",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp,
                                          color: Color(0xff515151)))
                                ])
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 30.h),
              Center(
                child: Text("No more data available",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff696969))),
              )
            ],
          ),
        ));
  }
}
