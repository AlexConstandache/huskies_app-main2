import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:huskies_app/logic/helper/helpers.dart';
import 'package:huskies_app/gui/views/widgets/home_view_widgets/match_view_widget.dart';
import 'package:huskies_app/gui/views/widgets/score_board_widgets/match_result_widget.dart';

class MatchCard extends StatefulWidget {
  final int? homeScore;
  final int? visitorScore;
  final String? homeImage;
  final String? visitorImage;
  final bool isLastMatch;
  final Color color;
  const MatchCard({
    super.key,
    this.homeScore,
    this.visitorScore,
    this.homeImage,
    this.visitorImage,
    this.isLastMatch = true,
    this.color = Colors.white,
  });

  @override
  State<MatchCard> createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  final matches = List.generate(13, (index) => index++);
  int currentMatch = 0;
  @override
  Widget build(BuildContext context) => Card(
        elevation: 7,
        child: Container(
          decoration: BoxDecoration(color: widget.color, borderRadius: BorderRadius.circular(8)),
          // height: MediaQuery.of(context).size.height / 3.563,
          // height: 195,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.isLastMatch ? 'Letztes Match' : 'Nächstes Match',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
              CarouselSlider.builder(
                itemCount: 15,
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  height: 120,
                  onPageChanged: (index, _) => setState(() => currentMatch = index),
                ),
                itemBuilder: (BuildContext context, int i, _) => widget.isLastMatch
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LastMatchResultWidget(
                            homeScore: widget.homeScore,
                            visitiorScore: widget.visitorScore,
                            homeImage: widget.homeImage,
                            visitorImage: widget.visitorImage,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () => showDialog(
                                context: context,
                                builder: (context) => Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                                  color: Colors.white70,
                                  alignment: Alignment.center,
                                  child: const Text('Spielbericht'),
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                color: const Color.fromARGB(255, 39, 62, 73),
                                child: const Text(
                                  'Spielbericht',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const MatchViewWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Helpers.buildIndicator(
                  selcetedIndex: currentMatch,
                  length: matches.length,
                ),
              ),
            ],
          ),
        ),
      );
}
