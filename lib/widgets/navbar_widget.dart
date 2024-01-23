import 'package:flutter/material.dart';

class NavBarIconWidget extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final String name;
  final bool isCurrentView;
  const NavBarIconWidget(
      {super.key,
      required this.icon,
      required this.name,
      required this.onPressed,
      this.isCurrentView = false});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isCurrentView
                ? Container(
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                  )
                : const SizedBox(),
            SizedBox(
              height: 45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    size: 25,
                    color: Colors.white,
                    icon,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
