import 'package:flutter/material.dart';

class TicketHeadWidget extends StatelessWidget {
  const TicketHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            splashRadius: 5,
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          const Text(
            'Tickets',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(45)),
            child: Image.asset(
              'assets/da.jpg',
              height: 50,
            ),
          ),
        ],
      );
}
