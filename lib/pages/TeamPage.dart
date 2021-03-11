import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:TD/models/Player.dart';
import 'package:TD/models/Team.dart';


class TeamPage extends StatefulWidget {
  TeamPage({Key key, this.player, this.characters}) : super(key: key);
  final Player player;
  final List<Character> characters;
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.red,
    );
  }
}