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
            child: SizedBox(             
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: buttonTextLink.entries.map((element) {
                  return Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () => context.push('/${element.key}'), 
                          child: Text(
                            element.value
                          )),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
    );
  }
}