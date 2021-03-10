import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:flutter/rendering.dart';

class CharacterDetails extends StatefulWidget
{
  const CharacterDetails({Key key, this.character}) : super(key:key);
  final Character character;

  @override
  _CharacterDetailsState createState() => _CharacterDetailsState();
}
class _CharacterDetailsState extends State<CharacterDetails>
{
  @override
  Widget build(BuildContext context)
  {
    return Card
    (
      child: ListTile(
        leading : Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            //image: AssetImage(
            widget.character.imagePath(),
            height: 175,
          )
        )
      )
    );
  }
}