import 'Team.dart';

class Player {
  final String uuid;
  final String firstname;
  final String lastname;
  final String email;
  final int gender;

  Team team;

  Player(this.uuid, this.firstname, this.lastname, this.email, this.gender)
  {
    if(gender !=1 && gender != 2){
      throw new Exception('Vous devez mettre comme genre 1 (Homme) ou 2 (Femme)');
    }

    this.team = Team("My Team");
  }
}