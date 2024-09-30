import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Xbutton extends StatelessWidget {
  final double width;
  final double height;
  final String multiple;
  final String price;

  const Xbutton(
      {required this.width,
      required this.height,
      required this.multiple,
      required this.price,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width * 0.7,
          height: width * 0.7,
          child: Image.asset(
            "assets/images/home/bottomsheet/bumbug.png",
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment(0, 0.75),
          child:
              // Padding(
              //   padding:  EdgeInsets.only(bottom: height*0.026),
              //   child:
              Text(
            price,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 13.76),
            // ),
          ),
        ),
        Align(
          alignment: Alignment(0.4, -0.21),
          child:
              // Padding(
              // padding:  EdgeInsets.only(bottom: height*0.038, right: width*0.038),
              // child:
              Text(
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
        ),
        // )
      ],
    );
  }
}
