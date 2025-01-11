import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(Fitup());

class Fitup extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen1(),
      );
    });
  }
}
