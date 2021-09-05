import 'package:flutter/material.dart';
import 'package:shagel/constants.dart';
import 'package:shagel/view/widgets/CustomAppbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        trailing: Image.asset('assets/images/menu.png'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 125.h,
                  width: 402.w,
                  color: mainColor,
                  child: Column(
                    children: [
                      Text(
                        'مرحباً بك في شاغر للوظائف',
                        style: TextStyle(
                          fontSize: 18.0.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // SizedBox(height: 30.h,),
                      Transform.translate(
                        offset: Offset(0.w,65.h),
                        child: Container(

                          width: 337.22.w,
                          height: 58.h,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: mainColor,
                              width: 0.9.w,

                            ),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          //margin: EdgeInsets.all(12),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.search,
                                  color: mainColor,
                                  size: 28.sp,
                                ),
                              ),

                              new Expanded(
                                child: TextFormField(

                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "ادخل اسم الوظيفة ",
                                    hintStyle: TextStyle(

                                      fontSize: 21.0.sp,
                                      color: const Color(0xFFBEBEBE),




                                    ),
                                    //fillColor: Colors.white,
                                  //  hoverColor: Colors.white,

                                    // contentPadding: EdgeInsets.symmetric(
                                    //     vertical: 8, horizontal: 8),
                                    // isDense: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
