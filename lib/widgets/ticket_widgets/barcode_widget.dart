import 'package:flutter/material.dart';

class BarcodeView extends StatelessWidget {
  final Image barcode;
  const BarcodeView({super.key, required this.barcode});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 6),
        height: 90,
        width: double.infinity,
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
          semanticContainer: false,
          elevation: 3,
          color: const Color.fromARGB(255, 215, 234, 249),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            child: barcode,
          ),
        ),
      );
}
