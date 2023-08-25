import 'package:flutter/material.dart';


class WhiteContainer{
  Widget getWhiteContainer(BuildContext context, Widget ? conxtetWidget){
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height,
      width: size.width,
        color: Colors.white,
        child: conxtetWidget!,
    );
  }
}
