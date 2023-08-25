import 'package:flutter/material.dart';
import 'package:web_page/white_container.dart';


class SkillDescription extends StatelessWidget{
  SkillDescription({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Descrição das Habilidades",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: WhiteContainer().getWhiteContainer(context, null)
    );
  }
}
