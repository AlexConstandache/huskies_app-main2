// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:huskies_app/widgets/score_board_widgets/match_card_widget.dart';
import 'package:huskies_app/widgets/score_board_widgets/scoreboard_footer_widget.dart';
import 'package:huskies_app/widgets/score_board_widgets/scoreboard_widget.dart';

class MatchStatisticsView extends StatefulWidget {
  final String season;
  const MatchStatisticsView({super.key, required this.season});

  @override
  State<MatchStatisticsView> createState() => _MatchStatisticsViewState();
}

class _MatchStatisticsViewState extends State<MatchStatisticsView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.season,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(width: 12),
              Container(
                width: 50,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  'assets/da.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const MatchCard(
                  homeScore: 3,
                  visitorScore: 1,
                  homeImage: 'huskies.png',
                  visitorImage: 'fuechse.jpg',
                ),
                const SizedBox(height: 12),
                const ScoreboardViewWidget(),
                const SizedBox(height: 6),
                GameStaticsFooterWidget(season: widget.season)
              ],
            ),
          ),
        ),
      );
}
