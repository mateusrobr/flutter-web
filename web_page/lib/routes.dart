import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'HomeScreen.dart';
import 'DoneProjects.dart';
import 'GetInTouch.dart';

final linkList = [
  "Teste",
  "Teste 2",
  "Teste 3",
];

final Map<dynamic,Widget>buttonTeste = {
 "doneprojects" : DoneProjects(),
 "getintouch" : GetInTouch()
};

final routes = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) => MaterialPage(child: HomeScreen(buttonTextLink: buttonTeste,)),
  ),
  GoRoute(
    path: '/doneprojects',
    pageBuilder: (context, state) => MaterialPage(child: DoneProjects()),
  ),
  GoRoute(
    path: '/getintouch',
    pageBuilder: (context, state) => MaterialPage(child: GetInTouch()),
  )

]
);