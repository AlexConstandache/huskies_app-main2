import 'package:huskies_app/logic/classes/leage_classes/game_report.dart';
import 'package:huskies_app/logic/classes/team/team.dart';
import 'package:json_annotation/json_annotation.dart';
part 'match.g.dart';

abstract class Match {
  const Match._(
    endScore,
    gamereports,
    goals,
    home,
    visitor,
    winner,
  );
}

@JsonSerializable()
class PastMatch extends Match {
  final String endScore;
  final List<GameReport> gamereports;
  final Map goals;
  final Team home;
  final Team visitor;
  final Team winner;
  PastMatch(
    this.endScore,
    this.gamereports,
    this.goals,
    this.home,
    this.visitor,
    this.winner,
  ) : super._(
          endScore,
          gamereports,
          goals,
          home,
          visitor,
          winner,
        );
  factory PastMatch.fromJson(Map<String, dynamic> json) => _$PastMatchFromJson(json);
  Map<String, dynamic> toJson() => _$PastMatchToJson(this);
}

@JsonSerializable()
class NextMatch extends Match {
  final String? endScore;
  final List<GameReport>? gamereports;
  final Map? goals;
  final Team home;
  final Team visitor;
  final Team? winner;
  NextMatch(
    this.endScore,
    this.gamereports,
    this.goals,
    this.home,
    this.visitor,
    this.winner,
  ) : super._(
          endScore,
          gamereports,
          goals,
          home,
          visitor,
          winner,
        );
  factory NextMatch.fromJson(Map<String, dynamic> json) => _$NextMatchFromJson(json);
  Map<String, dynamic> toJson() => _$NextMatchToJson(this);
}
