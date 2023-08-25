import 'package:flutter/material.dart';
import 'package:web_page/white_container.dart';


class DoneProjects extends StatelessWidget{
  DoneProjects({super.key});

  final doneProjects = {
    "myDrugs" : "Aplicação desktop simples para gerenciamente de estoque e com caixa usando Tkinter e Sqlite em python",
    "EarlyReturnProcessor" : "Ferramenta para refatoração automática de código, atualmente não está completa porém já consegue buscar por candidatos em códigos que cumprem os requisitos"
  };

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
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
      body: WhiteContainer().getWhiteContainer(context, Column(
        children: doneProjects.entries.map((element) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container( 
                  width: size.width,
                  color: Color.fromARGB(255, 111, 182, 240),
                  child: Center(
                    child: Text(
                      element.key,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                        selectionColor: Colors.black,),
                  ),
                ),
              ),
              Container(
                
                color: const Color.fromARGB(255, 0, 86, 156),
                child: Text(element.value),
              )
            ],
          );
        }).toList(),
      ))
    );
  }
}
