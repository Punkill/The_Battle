import 'package:TD/models/Character.dart';
import 'dart:math';
import 'package:TD/data/characters.dart' as staticData;

class Team{
  final String uuid;
  //final Player player;
  String name = "My Team";
  List<Character> characters;

  List<Character> _randomSelectCharacter()
  {
    List<Character> randomCharacterList = List(2);
    Random random = new Random();
    int random1 = random.nextInt(staticData.characters.length);
    int random2 = random.nextInt(staticData.characters.length);
    Character character1 = staticData.characters[random1];


    while(random1 == random2)
    {
      random2 = random.nextInt(staticData.characters.length);
    }
    Character character2 = staticData.characters[random2];

    character1.selected = true;
    character2.selected = true;
    character1.autoSelected = true;
    character2.autoSelected = true;

    randomCharacterList[0] = character1;
    randomCharacterList[1] = character2;

    return randomCharacterList;
  }

  bool addCharacter(Character characterSelected)
  {
    if(characters.length < 5 )
    {
      characters.insert(0, characterSelected);
      characterSelected.selected = true;
      return true;
    }
    else
      return false;
  }
  Team(this.uuid)
  {
    characters = List();
    characters.addAll(_randomSelectCharacter());
  }
}