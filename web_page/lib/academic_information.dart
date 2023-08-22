import 'package:flutter/material.dart';


class AcademicInformation extends StatelessWidget{
  AcademicInformation({super.key});

  final academicInformation = "Academico de Ciência da computação atualmente cursando o quinto semestre.";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Informações Academicas",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        child: Text(
              academicInformation,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
      ),
    );
  }
}