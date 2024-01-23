// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:huskies_app/gui/views/widgets/score_board_widgets/match_card_widget.dart';
import 'package:huskies_app/gui/views/widgets/score_board_widgets/scoreboard_footer_widget.dart';
import 'package:huskies_app/gui/views/widgets/score_board_widgets/scoreboard_widget.dart';

class MatchStatisticsView extends ConsumerWidget {
  static const MatchStatisticsView _homeViewInstance = MatchStatisticsView._internal();
  factory MatchStatisticsView() => _homeViewInstance;

  const MatchStatisticsView._internal();
  // const MatchStatisticsView({super.key, required this.season});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String season = 'SAISON 23/24';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              season,
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
                visitorImage: 'fuechse.png',
              ),
              const SizedBox(height: 12),
              const ScoreboardViewWidget(),
              const SizedBox(height: 6),
              GameStaticsFooterWidget(season: season)
            ],
          ),
        ),
      ),
    );
  }
}
