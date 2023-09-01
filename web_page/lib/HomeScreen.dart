import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';


class HomeScreen extends StatelessWidget{
  HomeScreen({
    super.key,
    required this.buttonTextLink});

  final Map<dynamic,dynamic>buttonTextLink;

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: buttonTextLink.entries.map((element) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                        child: ElevatedButton(
                          onPressed: () => GoRouter.of(context).go("/${element.key}"), 
                          child: Text(
                            element.value
                          )),
                    );
                }).toList(),
        title: Text(
          "Meu Portifolio",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          )
          ),
          body: Column(
            children: [
              Container(
                height: size.height * 0.50,
                width: size.width,
                color: Color.fromARGB(255, 6, 30, 241),
                child: Column(
                ),
              ),
              Container(
                height: size.height * 0.30,
                width: size.width,
                color: Color.fromARGB(255, 66, 206, 1),
              ),
Container(
                height: size.height * 0.10,
                width: size.width,
                color: Color.fromARGB(255, 255, 255, 255),
              )
          ],)
    );
  }
}
