import 'package:flutter/material.dart';
import 'package:modul3_mdp/screens/Splash.dart';

import 'screens/DetailManga.dart';
import 'screens/Home.dart';

void main() async {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(
                debugShowCheckedModeBanner: false, home: Splash());
          } else {
            return MaterialApp(
              title: 'Anime app',
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          }
        });
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}
