import 'package:huskies_app/logic/classes/team/player.dart';
import 'package:json_annotation/json_annotation.dart';
part 'team.g.dart';

@JsonSerializable()
class Team {
  final String name;
  final int position;
  final Map statistic;
  final List<Player> players;
  const Team(this.name, this.position, this.statistic, this.players);
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
