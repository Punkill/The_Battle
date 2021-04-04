import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:TD/widgets/TeamCharacter.dart';
import 'package:TD/models/Player.dart';
class TeamMaster extends StatefulWidget
{
  const TeamMaster({Key key, this.player}) : super(key: key);
  final Player player;
  @override
  _TeamMasterState createState() => _TeamMasterState();
}

class _TeamMasterState extends State<TeamMaster>
{
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemCount: widget.player.team.characters.length,
      itemBuilder: (BuildContext context, int index)
      {
        if(index !=null)
        {
          final Character character = widget.player.team.characters[index];
          return TeamCharacter(
            character: character,
          );
        }
        else
          return Container();
      },
    );
  }
}