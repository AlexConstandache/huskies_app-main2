import 'package:flutter/material.dart';

class TicketBodyViewWidget extends StatelessWidget {
  final DateTime? date;
  final String? destination;
  final bool paid;
  final String? seats;
  final String? ticketID;

  const TicketBodyViewWidget(
      {super.key, this.date, this.destination, this.paid = false, this.seats, this.ticketID});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          builfInfoSection(
              headleft: 'Datum',
              valueLeft: date == null ? 'Keine Datum' : '${date!.day}/${date!.month}/${date!.year}',
              headright: 'Plätze',
              valueRight: seats ?? 'Keine Sitzplätze'),
          builfInfoSection(
            headleft: 'Ort',
            valueLeft: destination ?? 'Playgground',
            headright: 'Uhrzeit',
            valueRight: date == null
                ? 'Startzeit'
                : date!.minute <= 10
                    ? '${date!.hour}:${date!.minute}0 Uhr'
                    : '${date!.hour}:${date!.minute} Uhr',
          ),
          builfInfoSection(
              headleft: 'Bezahlt',
              valueLeft: paid ? 'Bezahlt' : 'Noch Austehend',
              headright: 'Auftrag',
              valueRight: ticketID ?? 'Keine Tickets'),
        ],
      );

  Widget builfInfoSection({
    required String headleft,
    required String valueLeft,
    required String headright,
    required String valueRight,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    headleft,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Color.fromARGB(255, 155, 151, 151)),
                  ),
                  Text(
                    valueLeft,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headright,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 155, 151, 151),
                    ),
                  ),
                  Text(
                    valueRight,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
