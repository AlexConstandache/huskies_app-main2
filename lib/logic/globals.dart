//? example list for productsinfo in ShopView
import 'package:flutter/material.dart';

const List<Map<String, String>> productsList = [
  {
    "image": "assets/second.png",
    "title": "EC Kassel Huskies Fan Jersey\nSaison 2023 /2024",
    "price": "89.00€",
  },
  {
    "image": "assets/first.png",
    "title": "EC Kassel Huskies HALLOWEEN Fan\nJersey Saison 2023 /2024",
    "price": "89.00€",
  },
  {
    "image": "assets/four.png",
    "title": "Retired Game Fan Shirt",
    "price": "20.00€",
  },
  {
    "image": "assets/third.png",
    "title": "Retired Game Hoodie Women",
    "price": "35.00€",
  },
  {
    "image": "assets/last.png",
    "title": "Huskies Fan Fahne\n150 x 200 cm Hochformat",
    "price": "59.00€",
  },
  {
    "image": "assets/gutschrift.png",
    "title": "Gutschein 20 Euro",
    "price": "20.00€",
  },
];

Widget fakeHomeView() {
  return Container(
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
}
