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
        const Image(
          width: 130,
          image: AssetImage('assets/fuechse.jpg'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 12),
          height: 90,
          child: const Column(
            // mainAxisAlignment: MainAxisAlignment.center,

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
        const Image(width: 70, image: AssetImage('assets/huskies.png'))
      ],
    );
  }
}
