
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagel/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'package:shagel/view/widgets/CustomAppbar.dart';
import 'package:url_launcher/url_launcher.dart';
class CategoriesScreen extends StatefulWidget {

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}
const  String _url = 'www.shagher.net';
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

Future<void> _launchInBrowser( String _url) async {
  if (await canLaunch(_url)) {
    await launch(
      _url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    throw 'Could not launch $_url';
  }
}


class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppbar(
        trailing: IconButton(icon: Icon(Icons.arrow_forward_ios),onPressed: (){},)
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 85.5.h,
                  width: 399.82.w,
                  color: mainColor,
                  //alignment: Alignment.center,
                  child: Transform.translate(
                    offset: Offset(0.w,35.h),
                    child: Container(


                      width: 114.0,
                      height: 114.0,
                      decoration:  BoxDecoration(
                        color: mainColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/shagleicon.png',fit: BoxFit.contain,),
                      ),

                    ),
                  ),

                ),
              ],

            ),
      SizedBox(height: 40.h,),
      Text(
        'تطبيق شاغر للوظائف',
        style: TextStyle(

          fontSize: 18.0.sp,
          color: const Color(0xFF49C3CC),

        ),
      ),
            GestureDetector(
              onTap:() async{
                const url = 'https://www.shagher.net.gr/?hl=el';
                if (await canLaunch(url)) {
                await launch(url);
                } else {
                throw 'Could not launch $url';
                }

              },


                child: Text('${_url}')),

          ],
        ),
      ),
    );
  }
}
