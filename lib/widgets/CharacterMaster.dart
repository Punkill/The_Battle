import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:TD/widgets/CharacterPreview.dart';

class CharacterMaster extends StatefulWidget
{
  const CharacterMaster({Key key, this.characters, this.onSelected}) : super(key: key);
  final List<Character> characters;
  final Function onSelected;
  @override
  _CharacterMasterState createState() => _CharacterMasterState();
}
class _CharacterMasterState extends State<CharacterMaster>
{
  Character _selectedCharacter;
  _onCharacterSelect(Character character)
  {
    setState(()
    {
      this._selectedCharacter = character;
    });
    widget.onSelected(this._selectedCharacter);
  }
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemCount: widget.characters.length,
      itemBuilder: (BuildContext context, int index)
      {
        if(index !=null)
        {
          final Character character = widget.characters[index];
          return CharacterPreview(
            character: character,
            onSelected: _onCharacterSelect,
          );
        }
        else
          return Container();
      },
    );
  }
}