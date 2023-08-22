import 'package:flutter/material.dart';


class DoneProjects extends StatelessWidget{
  DoneProjects({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Projetos Completos",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}