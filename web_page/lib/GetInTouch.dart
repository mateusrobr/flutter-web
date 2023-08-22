import 'package:flutter/material.dart';


class GetInTouch extends StatelessWidget{
  GetInTouch({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get In Touch",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}