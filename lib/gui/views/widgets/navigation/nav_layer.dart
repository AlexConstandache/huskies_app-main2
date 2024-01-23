import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:huskies_app/gui/views/widgets/navigation/navbar_widget.dart';
import 'package:huskies_app/logic/helper/helpers.dart';
import 'package:huskies_app/logic/provider/notifier.dart';

class ViewNavigator extends ConsumerWidget {
  const ViewNavigator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStateNotifierProvider);
    final notifier = ref.read(appStateNotifierProvider.notifier);
    return SafeArea(
      child: Scaffold(
        body: switch (state.currentView) {
          1 => state.view[1],
          2 => state.view[2],
          3 => state.view[3],
          _ => state.view.first
        },
        bottomNavigationBar: NavigationBar(
          height: MediaQuery.of(context).size.height / 10,
          backgroundColor: const Color.fromARGB(255, 101, 132, 155),
          destinations: [
            NavBarIconWidget(
              icon: Icons.home_outlined,
              name: 'Home',
              isCurrentView: state.currentView == 0,
              onPressed: () => notifier.changeView(nextView: 0),
            ),
            NavBarIconWidget(
                icon: Icons.bookmark_border_outlined,
                name: 'Tickets',
                isCurrentView: state.currentView == 1,
                onPressed: () => notifier.changeView(nextView: 1)),
            NavBarIconWidget(
                icon: Icons.mail_outline,
                name: 'Ergebnisse',
                isCurrentView: state.currentView == 2,
                onPressed: () => notifier.changeView(nextView: 2)),
            NavBarIconWidget(
              icon: Icons.card_giftcard,
              name: 'shop',
              isCurrentView: state.currentView == 3,
              onPressed: () => Helpers.loadAndNavigate(
                  context: context,
                  ref: ref,
                  nextView: 3,
                  advertising: 'Hier könnte Ihre Werbung stehen',
                  image: 'huskies.png'),
            ),
          ],
        ),
      ),
    );
  }
}
