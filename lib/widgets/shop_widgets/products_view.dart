import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:huskies_app/helpers/products.dart';
import 'package:huskies_app/widgets/shop_widgets/item_details.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.basketShopping,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Shop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/da.jpg"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int i) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ItemsDetails(item: products[i]),
                  ),
                );
              },
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // AspectRatio(
                  //   aspectRatio: 1,
                  //   child:
                  Image.asset(
                    products[i]['image']!,
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[i]['title']!,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          products[i]['price']!,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
