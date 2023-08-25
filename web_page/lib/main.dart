import 'package:flutter/material.dart';
import 'package:web_page/routes.dart';
import 'package:flutter_web_plugins/url_strategy.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}


void main(){ 

  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}
