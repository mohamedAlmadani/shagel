

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shagel/view/screen/general/Categories.dart';
import 'package:shagel/view/screen/home/homeScreen.dart';


class splachScreen extends StatefulWidget {
  const splachScreen({Key? key}) : super(key: key);

  @override
  _splachScreenState createState() => _splachScreenState();
}

class _splachScreenState extends State<splachScreen> {

  @override
  void initState() {
    Timer(
        Duration(
          seconds: 4,
        ), () {
    Get.off(CategoriesScreen());



    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
           mainAxisSize: MainAxisSize.min,

          children: [
            Image.asset('assets/images/Splash.png',
              width: double.infinity,
              fit: BoxFit.cover,






            ),
          ],
        ),
      ),
    );
  }
}
