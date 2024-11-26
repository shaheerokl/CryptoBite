import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bottom_Navigtion.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(



      backgroundColor: Color(0xff131313),
      body:Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55.h,),
            Text(
              "TOTAL PROFIT",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff616161)),
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 30.h,

              child: Row(
                children: [
                  Text("7625.20", style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff388E3C)),),
                  SizedBox(width: 5.h,),
                  Container(alignment: Alignment.topLeft,

                    child: Text("USD", style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff616161)),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Divider(color: Color(0xff2B2B2B),),
            SizedBox(height: 10.h,),
            Text("CLOSED POSITIONS", style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF))),
            SizedBox(height: 20.h,),
           Container(
             height: 400.h,
             width: double.infinity,
             child: ListView.builder(

                 itemCount: 8,
                 itemBuilder: (context,index){
               return Column(
                 children: [
                   Container(
                     width: 320.w,
                     child:  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("SYMBOL", style: TextStyle(
                             fontSize: 12.sp,
                             fontWeight: FontWeight.w500,
                             color: Color(0xff393939))),
                         Padding(
                           padding:  EdgeInsets.only(right: 60.w),
                           child: Text("SIDE", style: TextStyle(
                               fontSize: 12.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff393939))),
                         ),
                         Text("PROFIT", style: TextStyle(
                             fontSize: 12.sp,
                             fontWeight: FontWeight.w500,
                             color: Color(0xff393939))),
                       ],
                     ),
                   ),
                   SizedBox(height: 15.h,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("XAUUSD", style: TextStyle(
                               fontSize: 12.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xffFFFFFF))),
                           SizedBox(height: 6.h,),

                           Text("Volume", style: TextStyle(
                               fontSize: 10.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff616161))),
                           SizedBox(height: 4.h,),
                           Text("0.6", style: TextStyle(
                               fontSize: 10.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff616161)))
                         ],
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: 20.h,
                             width: 35.w,
                             child: Center(
                               child: Text("BUY",style: TextStyle(
                                   fontSize: 12.sp,
                                   fontWeight: FontWeight.w500,
                                   color: Color(0xff388E3C))),
                             ),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(17.r)),
                                 color: Color(0xff17251C)),
                           ),
                           SizedBox(height: 6.h,),

                           Text("close time", style: TextStyle(
                               fontSize: 10.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff616161))),
                           SizedBox(height: 4.h,),
                           Text("2024-06-13 12:30:12", style: TextStyle(
                               fontSize: 10.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff616161)))
                         ],
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("134.40", style: TextStyle(
                               fontSize: 12.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff388E3C))),
                           SizedBox(height: 6.h,),

                           Text("close price", style: TextStyle(
                               fontSize: 10.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff616161))),
                           SizedBox(height: 4.h,),
                           Text("2330.92", style: TextStyle(
                               fontSize: 10.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff616161)))
                         ],
                       ),

                     ],
                   ),
                   SizedBox(height: 10.h,),
                   Divider(color: Color(0xff282828),)
                 ],
               );
             }),
           ),
SizedBox(height: 10.h,),
Center(
  child: Text("No more data avalable", style: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff616161))),
)
          ],
        ),
      ),

    );
  }
}
