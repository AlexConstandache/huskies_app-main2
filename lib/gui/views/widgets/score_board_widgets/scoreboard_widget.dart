// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:huskies_app/logic/helper/helpers.dart';

class ScoreboardViewWidget extends StatelessWidget {
  const ScoreboardViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Helpers.buildTableHead(
            context: context,
            position: 'PLATZ',
            team: 'TEAM',
            games: 'SPIELE',
            points: 'PUNKTE',
            goals: 'TORE',
            difference: 'DIFFERENZ',
          ),
          Helpers.buildScoreboardRow(
            context: context,
            place: 1,
            imageSource: 'huskies.png',
            games: 26,
            points: 54,
            goals: 86,
            difference: 27,
          ),
          Helpers.buildScoreboardRow(
            context: context,
            place: 2,
            imageSource: 'fuechse.png',
            games: 26,
            points: 46,
            goals: 80,
            difference: 5,
          ),
          Helpers.buildScoreboardRow(
              context: context,
              place: 3,
              imageSource: 'huskies.png',
              games: 26,
              points: 44,
              goals: 85,
              difference: 11),
          Helpers.buildScoreboardRow(
              context: context,
              place: 4,
              imageSource: 'fuechse.png',
              games: 26,
              points: 41,
              goals: 85,
              difference: 8),
          Helpers.buildScoreboardRow(
              context: context,
              place: 5,
              imageSource: 'huskies.png',
              games: 26,
              points: 41,
              goals: 83,
              difference: -1),
          Helpers.buildScoreboardRow(
              context: context,
              place: 6,
              imageSource: 'fuechse.png',
              games: 26,
              points: 40,
              goals: 69,
              difference: 3),
          Helpers.buildScoreboardRow(
              context: context,
              place: 7,
              imageSource: 'huskies.png',
              games: 26,
              points: 40,
              goals: 78,
              difference: -4),
          Helpers.buildScoreboardRow(
              context: context,
              place: 8,
              imageSource: 'fuechse.png',
              games: 26,
              points: 39,
              goals: 76,
              difference: 8),
        ],
      ),
    );
  }
}
