import 'package:flutter/material.dart';


class GetInTouch extends StatelessWidget{
  GetInTouch({super.key});

  final socialMedia = {
    "Instagram" : "@mateusrobr",
    "Email" : "mateusrobr@gmail.com",
    "Github" : "mateusrobr"
  };

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
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
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Container(
          color: Colors.white,
          child: Column(
            children: socialMedia.entries.map((element) {
              return Column(
                children: [
                  Text(
                    element.key,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    element.value,
                    style: TextStyle(
                      fontSize: 16
                    ),
                  )
                ],
              );
            }).toList(),
            )
            ),
      ),
    );
  }
}
