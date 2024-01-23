import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  final Map item;
  const ItemsDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Row(
              children: [
                Icon(
                  Icons.shop_outlined,
                  color: Colors.black,
                ),
                Text(
                  " Shop",
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 25),
              width: 45,
              decoration: BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/da.jpg',
                width: 35,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(item['image'], scale: 0.6),
          Text(
            item['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            item['price'],
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Color :'),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              'Size: 34 35 40 41',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 15),
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              child: const Text(
                'Add to Cart',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
