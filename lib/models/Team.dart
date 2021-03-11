import 'package:TD/models/Character.dart';
import 'dart:math';
import 'package:TD/data/characters.dart' as staticData;

class Team{
  final String uuid;
  //final Player player;
  String name = "My Team";
  List<Character> characters = List();

  void _randomSelectCharacter()
  {
    for(var i=0;i<=1;i++)
    {
      var _num = Random().nextInt(staticData.characters.length);
      print(_num);
      print(staticData.characters.length);
      this.characters.add(staticData.characters[_num]);
      /*this.characters[_num].selected = true;
      this.characters[_num].autoSelected = true;*/
      print(this.characters[_num].selected);
    }
  }
  Team(this.uuid)
  {
    _randomSelectCharacter();
  }
}