import 'package:flutter/material.dart';

class AGBViewWidget extends StatelessWidget {
  const AGBViewWidget({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.all(8),
        child: Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 9),
            children: [
              TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy\neirmod tempor invidunt ut labore',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '  et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, ',
              ),
              TextSpan(
                text: 'consetetur sadipscing elitr, ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text:
                      'sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, '),
              TextSpan(
                text: 'consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text:
                      ''' ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '''),
              TextSpan(
                text:
                    'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
}
