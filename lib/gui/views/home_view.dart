import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:huskies_app/gui/views/widgets/home_view_widgets/page_view_widget.dart';
// import 'package:huskies_app/logic/globals.dart';
import 'package:huskies_app/logic/helper/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends ConsumerStatefulWidget {
  static const HomeView _homeViewInstance = HomeView._();
  factory HomeView() => _homeViewInstance;

  const HomeView._();

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  int indexUpperCarousel = 0;
  int indexLowerCarousel = 0;
  @override
  Widget build(BuildContext context) {
    // final state = ref.read(provider);
    // final notifier = ref.read(provider.notifier);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 22, 63, 92),
          child: Column(
            children: [
              Row(
                children: [
                  // SizedBox(
                  //   width: 40,
                  //   child: IconButton(
                  //     //TODO: Navigate to UserProfileView
                  //     //TODO: Write UserProfileView.
                  //     onPressed: () {
                  //       notifier.greeting(
                  //           '${state.products.elementAt(0).values.toList()[2]}');
                  //     },
                  //     icon: const Icon(Icons.menu),
                  //     color: Colors.white,
                  //   ),
                  // ),

                  //the first secton make it in center
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 25, bottom: 10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/da.jpg',
                              width: 35,
                            ),
                            // ),
                          ),
                          const Text("Hallo David",
                              style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                          const Text(
                            "Willkommon zurück!",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return const UserInfoWidget();
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 110,
                    onPageChanged: (index, reason) {
                      setState(() {
                        indexUpperCarousel = index;
                      });
                    },
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              //   child: buildIndicator(
              //       index: indexUpperCarousel,
              //       isBackgroundColor: Colors.white),
              // ),
              /*........Trikos Section...............*/
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Image.asset(
                              'assets/second.png',
                              width: 80,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Image.asset('assets/first.png', width: 80),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Image.asset('assets/first.png', width: 80),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 1, bottom: 4),
                      child: Text(
                        'Unsere neuen Trikots sind da!',
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromARGB(255, 22, 63, 92),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 85,
                        height: 30,
                        padding: AppTheme.mediumPadding,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 22, 63, 92),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                          child: Text(
                            "Shop",
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Puzzle Section===================================

              Container(
                color: const Color.fromARGB(255, 168, 199, 224),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        'assets/puzzle_huskies.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        scale: 0.1,
                        height: 200,
                      ),
                    ),
                    // Container(
                    //   color: Color.fromARGB(207, 213, 236, 255),
                    // ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      top: 20,
                      child: Container(
                        // padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Kassel Huskies",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromARGB(255, 22, 63, 92),
                              ),
                            ),
                            const Text(
                              "NFT-Puzzle",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromARGB(255, 22, 63, 92),
                              ),
                            ),
                            const Text(
                              "Sichere dir jetzt dein exklusives,\n limitiertes Kassel Huskies \n Puzzlestück und zeige deine \n Unterschtützung für das Team.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 14, 31, 15)),
                              textAlign: TextAlign.center,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                width: 85,
                                height: 30,
                                padding: AppTheme.mediumPadding,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 22, 63, 92),
                                    borderRadius: BorderRadius.circular(7)),
                                child: const Center(
                                  child: Text(
                                    "Mehr Infos",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator(
          {required int index, required Color isBackgroundColor}) =>
      AnimatedSmoothIndicator(
        activeIndex: index,
        count: 3,
        effect: SlideEffect(
            dotHeight: 8, dotWidth: 8, activeDotColor: isBackgroundColor),
      );
}
