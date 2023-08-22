import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';


class HomeScreen extends StatelessWidget{
  HomeScreen({
    super.key,
    required this.buttonTextLink});

  final Map<dynamic,Widget>buttonTextLink;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu Portifolio",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          )
          ),
          body: Center(
            child: Column(
              children: buttonTextLink.entries.map((element) {
                return SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => context.push('/${element.key}'), 
                    child: Text(
                      element.key
                    )),
                );
              }).toList(),
            ),
          ),
    );
  }
}