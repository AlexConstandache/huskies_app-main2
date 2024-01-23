import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Helpers {
  const Helpers();

  static Widget buildIndicator({required int selcetedIndex, required int length}) =>
      AnimatedSmoothIndicator(
        activeIndex: selcetedIndex,
        count: length,
        // TODO: Need a own Style in AppTheme?
        effect: const SlideEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.black,
          dotHeight: 8,
          dotWidth: 8,
        ),
      );

  static Container buildScoreboardRow({
    required BuildContext context,
    required int place,
    required String imageSource,
    required int games,
    required int points,
    required int goals,
    required int difference,
  }) =>
      Container(
        // TODO: Need a own Style in AppTheme?
        height: 35,
        margin: const EdgeInsets.only(bottom: 1),
        decoration: BoxDecoration(
            color: place != 1 ? Colors.white : const Color.fromARGB(255, 235, 231, 231)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('$place.', style: const TextStyle(color: Colors.black)),
            SizedBox(
              height: 30,
              child: Center(child: Image.asset('assets/$imageSource', width: 20, height: 20)),
            ),
            Center(child: Text('$games', style: const TextStyle(color: Colors.black))),
            Center(child: Text('$points', style: const TextStyle(color: Colors.black))),
            Center(child: Text('$goals', style: const TextStyle(color: Colors.black))),
            Center(child: Text('$difference', style: const TextStyle(color: Colors.black))),
          ],
        ),
      );

  static Container buildTableHead({
    required BuildContext context,
    required String position,
    required String team,
    required String games,
    required String points,
    required String goals,
    required String difference,
  }) {
    return Container(
      height: 35,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 101, 132, 155),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(position, style: const TextStyle(color: Colors.white)),
          Text(team, style: const TextStyle(color: Colors.white)),
          Text(games, style: const TextStyle(color: Colors.white)),
          Text(points, style: const TextStyle(color: Colors.white)),
          Text(goals, style: const TextStyle(color: Colors.white)),
          Text(difference, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
