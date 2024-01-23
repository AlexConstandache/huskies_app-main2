import 'package:flutter/material.dart';

class MatchViewWidget extends StatelessWidget {
  const MatchViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/fuechse.png',
          height: 90,
        ),
        Container(
          margin: const EdgeInsets.only(right: 12),
          height: 90,
          child: const Column(
            children: [
              Text(
                "VS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Eisarena Weiswasser, \n 08.12.2023. 19.30 Uhr",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        Image.asset(width: 70, 'assets/huskies.png'),
      ],
    );
  }
}
