import 'package:flutter/material.dart';


class SkillDescription extends StatelessWidget{
  SkillDescription({super.key});

  @override
  Widget build(BuildContext context){
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
    );
  }
}