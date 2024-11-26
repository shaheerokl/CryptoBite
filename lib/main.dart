import 'package:crypto_bite/History.dart';
import 'package:crypto_bite/Home.dart';
import 'package:crypto_bite/LoginPage.dart';
import 'package:crypto_bite/Person_Over_View.dart';
import 'package:crypto_bite/Profile_Following_List.dart';
import 'package:crypto_bite/Profile_Wallet_history.dart';
import 'package:crypto_bite/Profile_page.dart';
import 'package:crypto_bite/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    useMaterial3: true,
    ),
    home: const Splashscreen(),
    );
    });
  }
}
