import 'package:flutter/material.dart';
import 'package:web_page/routes.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
      routerDelegate: routes.routerDelegate,
    );
  }
}


void main(){
  buttonTeste.entries.forEach((element) {
    print(element.key);
    print(element.value.runtimeType);
  });
  runApp(MyApp());
}