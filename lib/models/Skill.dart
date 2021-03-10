class Skill{
  static const String strength = "STRENGTH";
  static const String cleverness = "CLEVERNESS";
  static const String speed = "SPEED";
  static const String intelligence = "INTELLIGENCE";

  static final List kinds = [strength,cleverness,speed,intelligence];

  String kind;
  int value;

  Skill(String kind, int value){
    if(kinds.contains(kind)){
      this.kind = kind;
    }
    else{
      throw new Exception('Erreur valeur kind');
    }

    if(value >= 0 && value <= 5){
      this.value = value;
    }
    else{
      throw new Exception('value doit être comprise entre 0 et 5');
    }
  }
}