import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileFollowingList extends StatelessWidget {
  const ProfileFollowingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Padding(
        padding:EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h,),
            Text("You following", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Color(0xff7E57C2))),
            RichText(text: TextSpan(
              children: [
                TextSpan(text: "120",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Color(0xffFFFFFF))),
                TextSpan(text: "Persons",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xffE4E4E4)))
              ]
            )),
            SizedBox(height: 15.h,),
            TextField(textInputAction:TextInputAction.search,
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

                        },
                          child: Container(
                            height: 150.h,
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
                                      color: Color(0xff373737),
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
