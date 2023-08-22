import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_page/academic_information.dart';
import 'package:web_page/self_description.dart';
import 'package:web_page/skill_description.dart';
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
 "getintouch" : GetInTouch(),
 "description" : SkillDescription(),
 "academicinformation" : AcademicInformation(),
 "selfdescription" : SelfDescription()
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
  ),
  GoRoute(
    path: '/description',
    pageBuilder: (context, state) => MaterialPage(child: SkillDescription()),
  ),
  GoRoute(
    path: '/academicinformation',
    pageBuilder: (context, state) => MaterialPage(child: AcademicInformation()),
    ),
  GoRoute(
    path: '/selfdescription',
    pageBuilder: (context, state) => MaterialPage(child: SelfDescription()),
    )

]
);

