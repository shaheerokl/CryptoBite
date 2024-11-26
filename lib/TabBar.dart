import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  late TabController controller;

  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             height: 30.h,
             width: 180.w,
             child: TabBar(
                 indicatorWeight: 0.h,
                 indicatorSize: TabBarIndicatorSize.tab,
                 indicator: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(5.r),
                 ),
                 controller: controller,
                 dividerColor: Colors.transparent,
                 unselectedLabelColor: Color(0xff616161),
                 labelColor: Colors.white,
                 dividerHeight: 0.0.h,
                 tabs: [
                   Tab(
                     text: "History",
                   ),
                   Tab(
                     text: "Current",
                   ),

                 ]),
           ),
           Row(
             children: [
               Text(
                 "Detailes",
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
        Container(
          height: 280.h,
          child: TabBarView(controller: controller, children: [
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: Container(

                    width: double.infinity,

                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context,index){
                      return   Padding(
                        padding:  EdgeInsets.only(top: 20.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color:Colors.greenAccent.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(4.r))),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 10.w,right: 10.w,top: 4.h,bottom: 4.h),
                                    child: Text(
                                      "Long",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff28DAA6)),
                                    ),
                                  ),
                                ),
                                Text("50X",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff28DAA6))),
                                SizedBox(width: 10.w,),
                                Text("CRIPTOBITE",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffE4E4E4))),
                                SizedBox(width: 10.w,),
                                Container(
                                  decoration: BoxDecoration(color:Colors.black12,borderRadius: BorderRadius.all(Radius.circular(4.r))),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 10.w,right: 10.w,top: 4.h,bottom: 4.h),
                                    child: Text(
                                      "cross",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff28DAA6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("65,604.5",style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffE4E4E4))),
                                    SizedBox(height: 4.h,),
                                    Text("Entry price",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),
                                    SizedBox(height: 4.h,),
                                    Text("06/18 05:50:41",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("65,604.5",style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffE4E4E4))),
                                    SizedBox(height: 4.h,),
                                    Text("Exit price",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),
                                    SizedBox(height: 4.h,),
                                    Text("06/18 05:50:41",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1.45%",style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff388E3C))),
                                    SizedBox(height: 4.h,),
                                    Text("Roll",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),

                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );

                    }),
                  ),
                )

              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: Container(

                    width: double.infinity,

                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context,index){
                      return   Padding(
                        padding:  EdgeInsets.only(top: 20.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color:Colors.greenAccent.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(4.r))),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 10.w,right: 10.w,top: 4.h,bottom: 4.h),
                                    child: Text(
                                      "Long",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff28DAA6)),
                                    ),
                                  ),
                                ),
                                Text("50X",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff28DAA6))),
                                SizedBox(width: 10.w,),
                                Text("CRIPTOBITE",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffE4E4E4))),
                                SizedBox(width: 10.w,),
                                Container(
                                  decoration: BoxDecoration(color:Colors.black12,borderRadius: BorderRadius.all(Radius.circular(4.r))),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 10.w,right: 10.w,top: 4.h,bottom: 4.h),
                                    child: Text(
                                      "cross",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff28DAA6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("65,604.5",style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffE4E4E4))),
                                    SizedBox(height: 4.h,),
                                    Text("Entry price",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),
                                    SizedBox(height: 4.h,),
                                    Text("06/18 05:50:41",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("65,604.5",style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffE4E4E4))),
                                    SizedBox(height: 4.h,),
                                    Text("Current price",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),


                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1.45%",style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffE61313))),
                                    SizedBox(height: 4.h,),
                                    Text("Roll",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161))),

                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );

                    }),
                  ),
                )

              ],
            ),

          ]),
        )
      ],
    );
  }
}
