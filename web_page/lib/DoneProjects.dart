import 'package:flutter/material.dart';


class DoneProjects extends StatelessWidget{
  DoneProjects({super.key});

  final doneProjects = {
    "myDrugs" : "Aplicação desktop simples para gerenciamente de estoque e com caixa usando Tkinter e Sqlite em python",
    "EarlyReturnProcessor" : "Ferramenta para refatoração automática de código, atualmente não está completa porém já consegue buscar por candidatos em códigos que cumprem os requisitos"
  };

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
      body: Container(
        child: Column(
          children: doneProjects.entries.map((element) {
            return Column(
              children: [
                Text(
                  element.key,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  child: Text(element.value),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}