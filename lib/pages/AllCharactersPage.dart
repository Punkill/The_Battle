import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:TD/models/Player.dart';
import 'package:TD/widgets/CharacterMaster.dart';
import 'package:TD/widgets/CharacterDetails.dart';
import 'package:TD/data/characters.dart' as staticData;


class AllCharactersPage extends StatefulWidget {

  AllCharactersPage({Key key, this.player}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final Player player;
  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage>
{
  List<Character> _characters;
  Character _selectedCharacter;
  void _onCharacterSelect(Character character)
  {
    setState(()
    {
      this._selectedCharacter = character;
    });
  }

  Widget _getCharacterDetails()
  {
    if(this._selectedCharacter !=null)
      return CharacterDetails(character : this._selectedCharacter);
    else
      return Container();
  }
  _AllCharactersPageState()
  {
    _characters = staticData.characters;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.red,
      appBar: AppBar(
        backgroundColor : Colors.white,
        title: Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/the-battle-logo.png'),
              width: 100,
            )
          ],)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child :_getCharacterDetails() //_debug(_selectedCharacter)
            ),
            Expanded(child : CharacterMaster(characters: _characters, onSelected: this._onCharacterSelect))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar
      (
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Characters'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Team',
          )
        ],
        selectedItemColor : Colors.red[700]
      )
    );
  }
}