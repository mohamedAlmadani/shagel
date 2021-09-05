
import 'package:flutter/material.dart';
import 'package:shagel/constants.dart';
class CustomAppbar extends StatelessWidget  implements PreferredSizeWidget{
  Widget ? trailing;
  Function ?onPressed;

  CustomAppbar({this.trailing,this.onPressed});
  @override
  Size get preferredSize => const Size.fromHeight(45);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: mainColor,
        actions: [
          IconButton(onPressed:(){
            onPressed;
          } , icon: trailing!)


        ],

      ),
    );
  }
}
