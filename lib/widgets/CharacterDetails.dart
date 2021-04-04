import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:TD/models/Player.dart';
import 'package:flutter/rendering.dart';

class CharacterDetails extends StatefulWidget
{
  const CharacterDetails({Key key, this.character, this.player}) : super(key:key);
  final Character character;
  final Player player;
  @override
  _CharacterDetailsState createState() => _CharacterDetailsState();
}
class _CharacterDetailsState extends State<CharacterDetails>
{
  bool _selected;
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
                ElevatedButton(
                  onPressed: () {
                    _selected = widget.player.team.addCharacter(widget.character);
                    (_selected)
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar( //Affichage de la Snackbar
                      content: Text("Character has been added"),
                    ))
                    :ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("There are already 5 characters in your team")
                    ));
                    //widget.character.selected = true;
                  },
                  child: 
                    Text('Add to team',
                    style: TextStyle(
                      fontFamily: 'Knewave',
                      fontSize: 20,
                      color : Colors.red
                    )
                  ),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  )
                )
              ],
            )
          ),
        ],
      )
    );
  }
}