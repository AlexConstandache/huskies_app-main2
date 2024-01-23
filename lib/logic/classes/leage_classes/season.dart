import 'package:huskies_app/logic/classes/team/team.dart';
import 'package:json_annotation/json_annotation.dart';
part 'season.g.dart';

@JsonSerializable()
class Season {
  final String season;
  final List<Team> teams;
  final String league;
  final Map scores;
  final List<Map> matches;
  const Season(
    this.league,
    this.matches,
    this.scores,
    this.season,
    this.teams,
  );
  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonToJson(this);
}
