import 'package:huskies_app/logic/classes/team.dart';

class Player {
  final int age;
  final Team currentTeam;
  final String name;
  final int playerNumber;
  final bool activePlayer;
  final int goals;
  const Player(
    this.activePlayer,
    this.age,
    this.currentTeam,
    this.goals,
    this.name,
    this.playerNumber,
  );
}
