import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:huskies_app/logic/helper/helpers.dart';
// import 'package:huskies_app/gui/views/ticket_views/ticket_shop_view.dart';
import 'package:huskies_app/gui/views/widgets/ticket_widgets/agb_widget.dart';
import 'package:huskies_app/gui/views/widgets/ticket_widgets/ticket_info_widget.dart';
import 'package:huskies_app/gui/views/widgets/ticket_widgets/barcode_widget.dart';

class TicketWalletView extends StatefulWidget {
  static const TicketWalletView _ticketViewInstance = TicketWalletView._internal();
  factory TicketWalletView() => _ticketViewInstance;

  const TicketWalletView._internal();

  @override
  State<TicketWalletView> createState() => _TicketWalletViewState();
}

class _TicketWalletViewState extends State<TicketWalletView> {
  int currentIndex = 0;
  final List seasonGames = List.generate(8, (index) => index++);
  final barcodesListFromState = [
    'assets/barcode.png',
    'assets/barcode.png',
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Tickets',
            style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1.5),
          ),
        ),
        // drawer: TicketShopView(
        //   gamesInSeason: seasonGames,
        // ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: CarouselSlider.builder(
                  itemCount: barcodesListFromState.length,
                  itemBuilder: (BuildContext context, int i, _) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TicketInfoWidget(
                          paid: true,
                          homeTeam: 'Kassel Huskies',
                          visitorTeam: 'Lauterbacher Füchse',
                          date: DateTime(2021, 09, 06, 20),
                          destination: 'Nordhessen\nArena Kassel',
                          seats: 'c4',
                          ticketID: '1904566',
                        ),
                        const Padding(padding: EdgeInsets.only(top: 30)),
                        BarcodeView(
                          barcode: Image.asset(
                            barcodesListFromState[i],
                          ),
                        ),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 430,
                    enableInfiniteScroll: false,
                    // enlargeCenterPage: true,
                    onPageChanged: (index, _) => setState(() => currentIndex = index),
                  ),
                ),
              ),
              Helpers.buildIndicator(
                  selcetedIndex: currentIndex, length: barcodesListFromState.length),
              const AGBViewWidget(),
            ],
          ),
        ),
      );
}
