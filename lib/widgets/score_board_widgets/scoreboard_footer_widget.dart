import 'package:flutter/material.dart';

class GameStaticsFooterWidget extends StatelessWidget {
  final String season;
  const GameStaticsFooterWidget({
    super.key,
    required this.season,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
              color: Colors.white70,
              alignment: Alignment.center,
              child: const Text('Gesamte Tabelle'),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            color: const Color.fromARGB(255, 101, 132, 155),
            child: const Text(
              'Gesamte Tabelle aneigen',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ),
        Text(
          'Hauptrunde ${season[0]}${season.substring(1).toLowerCase()}',
          style: const TextStyle(fontSize: 9.5),
        ),
      ],
    );
  }
}
