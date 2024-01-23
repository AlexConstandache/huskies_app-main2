import 'package:huskies_app/logic/classes/game_report.dart';
import 'package:huskies_app/logic/classes/team.dart';

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

class PasstMatch extends Match {
  final String endScore;
  final List<GameReport> gamereports;
  final Map goals;
  final Team home;
  final Team visitor;
  final Team winner;
  PasstMatch(
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
}

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
}
