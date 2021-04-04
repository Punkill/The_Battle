import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:flutter/rendering.dart';
import 'package:TD/models/Player.dart';
class TeamCharacter extends StatefulWidget
{
  const TeamCharacter({Key key, this.character}) : super(key:key);

  final Character character;
  @override
  _TeamCharacterState createState() => _TeamCharacterState();
}

class _TeamCharacterState extends State<TeamCharacter>
{
  @override
  Widget build(BuildContext context)
  {
    return (widget.character.autoSelected)
    ?Card(
     color : Colors.red[700],
      child : ListTile(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage(widget.character.imagePath()),
            width:100
          )
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(
            fontFamily: 'knewave', fontSize: 20, color: Colors.white
          )
        ),
        trailing: IconButton(
          icon : Icon(Icons.lock)
        )
      )
    )
    :Card(
     color : Colors.red[400],
      child : ListTile(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage(widget.character.imagePath()),
            width:100
          )
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(
            fontFamily: 'knewave', fontSize: 20, color: Colors.white
          )
        ),
        trailing: IconButton(
          icon : Icon(Icons.remove_circle),
        )
      )
    );
  }
}