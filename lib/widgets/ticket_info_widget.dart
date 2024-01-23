import 'package:flutter/material.dart';
import 'package:huskies_app/widgets/ticket_widgets/ticket_view_body.widget.dart';
import 'package:huskies_app/widgets/ticket_widgets/ticket_view_head_widget.dart';

class TicketInfoWidget extends StatelessWidget {
  final String? homeTeam;
  final String? visitorTeam;
  final DateTime? date;
  final String? destination;
  final String? seats;
  final String? ticketID;
  final bool paid;
  const TicketInfoWidget({
    super.key,
    required this.paid,
    this.homeTeam,
    this.visitorTeam,
    this.date,
    this.destination,
    this.seats,
    this.ticketID,
  });

  @override
  Widget build(BuildContext context) => Card(
        elevation: 3,
        color: const Color.fromARGB(255, 215, 234, 249),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            TicketHeadViewWidget(
              homeTeam: homeTeam,
              visitorTeam: visitorTeam,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'e-ticket',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            TicketBodyViewWidget(
              date: date,
              destination: destination,
              paid: paid,
              seats: seats,
              ticketID: ticketID,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
            ),
          ],
        ),
      );
}
