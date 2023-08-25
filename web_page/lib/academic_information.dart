import 'package:flutter/material.dart';


class AcademicInformation extends StatelessWidget{
  AcademicInformation({super.key});

  final academicInformation = "Academico de Ciência da computação atualmente cursando o quinto semestre.";

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
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
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Container(
          color: Colors.white,
          child: Text(
                academicInformation,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
        ),
      ),
    );
  }
}
