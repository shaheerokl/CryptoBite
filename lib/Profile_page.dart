import 'package:crypto_bite/Profile_Following_List.dart';
import 'package:crypto_bite/Profile_Wallet_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bottom_Navigtion.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        backgroundColor: Color(0xff181818),
        toolbarHeight: 70.h,
        actions: [
          Icon(
            Icons.open_in_new_outlined,
            size: 20.sp,
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile dp.png"),
                    radius: 50,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Mohammed Jamsheer",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Color(0xffE4E4E4)),
              ),
            ),
            Center(
              child: Text(
                "7788664433",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xff6F6F70)),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff131313),
                  borderRadius: BorderRadius.all(Radius.circular(12.r))),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  top: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Holding value",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Color(0xff616161)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 6.w, right: 6.w, top: 4.h, bottom: 4.h),
                          child: Container(
                            width: 56.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                color: Color(0xff2A1F3B),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: Center(
                              child: Text("Today",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Color(0xff7E57C2))),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("\$ 7,625.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 26.sp,
                                color: Color(0xffE4E4E4))),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 15.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff1C3C1E)),
                          child: Icon(
                            Icons.roundabout_right,
                            size: 10.sp,
                            color: Color(0xff388E3C),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("\$ 105.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Color(0xff388E3C)))
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("Invested value",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff616161))),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("\$ 5,550.00",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Color(0xffE4E4E4))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileWalletHistory()));
                    },
                      child: Container(
                        height: 50.h,
                        width: 155.w,
                        decoration: BoxDecoration(
                            color: Color(0xff7E57C2),
                            borderRadius: BorderRadius.all(Radius.circular(8.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.history,
                              color: Color(0xffE4E4E4),
                            ),
                            Text("History",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                    color: Color(0xffE4E4E4)))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileFollowingList()));

                    },
                      child: Container(
                        height: 50.h,
                        width: 155.w,
                        decoration: BoxDecoration(
                            color: Color(0xff7E57C2),
                            borderRadius: BorderRadius.all(Radius.circular(8.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.manage_accounts_outlined,
                              color: Color(0xffE4E4E4),
                            ),
                            Text("Followings",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                    color: Color(0xffE4E4E4)))
                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "advanced settings",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff616161)),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                height: 200.h,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context,index){
                  return ListTile(
                    minTileHeight: 40.h,
                    leading: Icon(Icons.notifications_none,color: Color(0xff7D7D7D)),
                    title: Text("Notification",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7D7D7D))),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff7D7D7D)),
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
