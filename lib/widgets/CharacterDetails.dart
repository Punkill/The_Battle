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
      color : Colors.red[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>
        [
          Expanded
          (
            child: Column(
              children: <Widget>
              [
                Text(
                  widget.character.name,
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color : Colors.red
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),                
                  child: Image(
                  image: AssetImage(
                      widget.character.imagePath(),
                    ),
                    height: 125,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child : Column(
              children: <Widget>
              [
                Text(
                  'strength : ${widget.character.strength.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color : Colors.red
                  )
                ),
                Text(
                  'speed : ${widget.character.speed.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color : Colors.red
                  )
                ),
                Text(
                  'cleverness : ${widget.character.cleverness.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color : Colors.red
                  )
                ),
                Text(
                  'intelligence : ${widget.character.intelligence.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color : Colors.red
                  )
                ),
              ],
            )
          )
        ],
      )
    );
  }
}