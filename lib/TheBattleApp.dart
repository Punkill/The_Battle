import 'package:flutter/material.dart';
import 'package:TD/pages/AllCharactersPage.dart';
import 'package:TD/pages/TeamPage.dart';
import 'package:TD/models/Player.dart';


class TheBattleApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _TheBattleAppState createState() => _TheBattleAppState();
}

class _TheBattleAppState extends State<TheBattleApp>
{
  final Player _player = Player("uuid","John","Doe","john@doe.com",1);

  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Battle',
      routes:{
        '/': (context) => AllCharactersPage(player : _player),
        '/team': (context) => TeamPage(player: _player)
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}