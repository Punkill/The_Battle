import 'package:TD/models/Character.dart';
import 'package:TD/models/Player.dart';

class Team{
  final String uuid;
  final Player player;
  List<Character> characters;

  Team(this.uuid, this.player);
}