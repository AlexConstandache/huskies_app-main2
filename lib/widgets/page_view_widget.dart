import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 241, 237, 237),
                          spreadRadius: 7),
                    ],
                  ),
                  child: const ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.red, // Change the color of the icon here
                      BlendMode.srcIn,
                    ),
                    child: Icon(
                      FontAwesome5.database,
                      size: 15,
                    ),
                  ),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Points',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '230',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
            ],
          ),
          //middle of white box
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: Container(
              height: 44,
              width: 1,
              color: Colors.red.withOpacity(0.4),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 241, 237, 237),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 241, 237, 237),
                          spreadRadius: 7),
                    ],
                  ),
                  child: const ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.red, // Change the color of the icon here
                      BlendMode.srcIn,
                    ),
                    child: Icon(
                      FontAwesome5.medal,
                      size: 15,
                    ),
                  ),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Level',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '230',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
