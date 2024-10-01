import 'package:flutter/material.dart';

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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/home/bottomsheet/bumbug.png")),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(right: width * 0.5),
          //     child:
               
            // ),
          // ),
          // Padding(
          //   padding:  EdgeInsets.only(top:height*0.01),
          //   child: 
          Container(height: 1,),
             Container(
              alignment: Alignment.centerRight,
               child: Text(
                      multiple,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 2.0,
                              offset: const Offset(2.0, 2.0),
                            ),
                          ]),
                                 ),
             ),
                
          // ),
             Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13.76),
                ),
          // ),
        ],
      ),
    );
  }
}
