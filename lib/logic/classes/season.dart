import 'package:huskies_app/logic/classes/team.dart';

class Season {
  final String season;
  final List<Team> teams;
  final String league;
  final Map scores;
  const Season(
    this.league,
    this.scores,
    this.season,
    this.teams,
  );
}
