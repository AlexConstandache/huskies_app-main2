import 'package:flutter/material.dart';
import 'package:huskies_app/views/match_statisctics_view.dart';
import 'package:huskies_app/widgets/shop_widgets/products_view.dart';
import 'package:huskies_app/views/home_view.dart';
import 'package:huskies_app/views/ticket_views/ticket_main_view.dart';
import 'package:huskies_app/widgets/navbar_widget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// import 'package:huskies_ticket_wallet/views/game_statistics_view..dart';
// import 'package:huskies_ticket_wallet/views/ticket_views/ticket_main_view.dart';
// import 'package:huskies_ticket_wallet/widgets/navbar_icon_widget.dart';

class ViewNavigator extends StatefulWidget {
  const ViewNavigator({super.key});

  @override
  State<ViewNavigator> createState() => _ViewNavigatorState();
}

class _ViewNavigatorState extends State<ViewNavigator> {
  bool isInitialiced = false;
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: switch (currentViewIndex) {
          1 => const TicketMainView(),
          2 => const MatchStatisticsView(season: 'SAISON 23/24'),
          3 => const ProductsView(),
          _ => const HomeView()
        },
        bottomNavigationBar: NavigationBar(
          height: MediaQuery.of(context).size.height / 7.8,
          backgroundColor: const Color.fromARGB(255, 101, 132, 155),
          destinations: [
            NavBarIconWidget(
              icon: Icons.home_outlined,
              name: 'Home',
              isCurrentView: currentViewIndex == 0,
              onPressed: () => setState(() => currentViewIndex = 0),
              // loadAndNavigate(
              //   nextView: 0,
              //   adversiting: const Text('Hallo Herzlich Willkomen'),
              // ),
            ),
            NavBarIconWidget(
              icon: Icons.bookmark_border_outlined,
              name: 'Tickets',
              isCurrentView: currentViewIndex == 1,
              onPressed: () => setState(() => currentViewIndex = 1),
              // loadAndNavigate(
              //   nextView: 1,
              //   adversiting: const Text('Hier Könnte Deine Werbung stehen'),
              // ),
            ),
            NavBarIconWidget(
              icon: Icons.mail_outline,
              name: 'Ergebnisse',
              isCurrentView: currentViewIndex == 2,
              onPressed: () => setState(() => currentViewIndex = 2),
              // loadAndNavigate(
              //   nextView: 2,
              //   adversiting: const Text('Eine weitere Werbung'),
              // ),
            ),
            NavBarIconWidget(
              icon: Icons.card_giftcard,
              name: 'shop',
              isCurrentView: currentViewIndex == 3,
              onPressed: () => loadAndNavigate(
                nextView: 3,
                adversiting: SizedBox(
                  height: 250,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/profile.jpg',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Hier könnte eine andere Werbung stehen'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget fakeHomeView() => Container(
        color: const Color.fromARGB(255, 187, 219, 235),
        child: const Center(
          child: Text(
            'Fake-Home-View',
            style: TextStyle(
              fontSize: 35,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  /// ownNavigtion function.
  void loadAndNavigate({required int nextView, required Widget adversiting}) {
    showDialog(
      context: context,
      builder: (context) => Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(20)),
              LoadingAnimationWidget.discreteCircle(color: Colors.teal, size: 50),
              // TODO: Initialize a Loading circle
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: adversiting,
              ),
            ],
          )),
    );
    Future.delayed(const Duration(milliseconds: 1500)).then((_) {
      Navigator.pop(context);
      setState(
        () => currentViewIndex = nextView,
      );
    });
  }
}
