import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Xbutton extends StatelessWidget {
  final String multiple;
  final String price;

  const Xbutton({required this.multiple, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/home/bottomsheet/bumbug.png",
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment(0, 0.68),
          child: Text(
            price,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 13.76),
          ),
        ),
        Align(
          alignment: Alignment(0.4, -0.3),
          child: Text(
            multiple,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.7),
                    blurRadius: 2.0,
                    offset: const Offset(3.0, 3.0),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
