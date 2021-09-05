import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shagel/view/screen/intro/splachScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shagel application',
        theme: ThemeData(
          fontFamily: 'Bahij_TheSansArabic-Plain'


        ),
        home: splachScreen(),
      ),
    );
  }
}


