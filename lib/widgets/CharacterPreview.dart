import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:flutter/rendering.dart';

class CharacterPreview extends StatefulWidget
{
  const CharacterPreview({Key key, this.character, this.onSelected}) : super(key:key);

  final Character character;
  final Function onSelected;
  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}
class _CharacterPreviewState extends State<CharacterPreview>
{
  bool _selected = false;
  Color color;

  void initState() {
    super.initState();
    color = Colors.red[400];
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: color,
      child: ListTile(
        onTap:()
        {
          setState(()
          {
            _selected = !_selected;
            if(_selected)
            {
              color = Colors.pink;
              this.widget.onSelected(widget.character);
            }
            else
            {
              color = Colors.red[400];
              this.widget.onSelected(null);
            }
          });
        },
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage(widget.character.imagePath()),
            width: 100,
          ),
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(
            fontFamily: 'knewave', fontSize: 20, color: Colors.white
          )
        )
      )
    );
  }
}

