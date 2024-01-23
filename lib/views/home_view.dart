import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:huskies_app/widgets/match_view_widget.dart';
import 'package:huskies_app/widgets/page_view_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _current1 = 0;
  int _current2 = 0;
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 22, 63, 92),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/da.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Hallo David",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "willkommon zurück!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return const PageViewWidget();
                },
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 110,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current1 = index;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
                child: buildIndicator(index: _current1, isBackgroundColor: Colors.white),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Nächstes Match",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (context, index, realIndex) {
                        return const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: MatchViewWidget(),
                        );
                      },
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: 80,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current2 = index;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: buildIndicator(index: _current2, isBackgroundColor: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
              ),
              const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/main.png'),
              )
            ],
          ),
        ),
      );

  Widget buildIndicator({required int index, required Color isBackgroundColor}) =>
      AnimatedSmoothIndicator(
        activeIndex: index,
        count: 3,
        effect: SlideEffect(dotHeight: 8, dotWidth: 8, activeDotColor: isBackgroundColor),
      );
}
