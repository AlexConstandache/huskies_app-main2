import 'package:huskies_app/logic/classes/player.dart';

class Team {
  final String name;
  final int position;
  final Map statistic;
  final List<Player> players;
  const Team(this.name, this.position, this.statistic, this.players);
}
