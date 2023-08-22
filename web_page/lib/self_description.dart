import 'package:flutter/material.dart';


class SelfDescription extends StatelessWidget{
  SelfDescription({super.key});


  final selfDescription = "Desenvolvedor Back-End com conhecimentos em Java, C++, Python, Github, Maven, Spoon-Core, Sqlite";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sobre",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        child: Text(
          selfDescription,
          style: TextStyle(
            fontSize: 20
          ),)),
    );
  }
}