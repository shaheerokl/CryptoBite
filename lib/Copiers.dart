import 'package:crypto_bite/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Copiers extends StatelessWidget {
  const Copiers({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250.h,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context,index){
          return  Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/copiers dp.png"),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ALLI KOZHI",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Color(0xffFEFEFE)),
                      ),
                      Text("total vol: 33,22.55589USDT", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xff616161)),),
                      Text("Profit +720.0779USDT", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xff388E3C)))
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Divider(color: Colors.grey.shade800,)
            ],
          );
      
        }),
      ),
    );
  }
}
