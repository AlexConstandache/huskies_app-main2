import 'package:huskies_app/logic/classes/team/team.dart';
import 'package:json_annotation/json_annotation.dart';
part 'player.g.dart';

@JsonSerializable()
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
  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
