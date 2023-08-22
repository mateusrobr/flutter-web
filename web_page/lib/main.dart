import 'package:flutter/material.dart';
import 'package:web_page/routes.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: routes,
    );
  }
}


void main(){
  
  runApp(MyApp());
}