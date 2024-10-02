import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyErh extends StatelessWidget {
  final double width;
  final double height;

  const MyErh({
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 10, top: 50),
          padding: const EdgeInsets.all(10),
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none, // Allow overflow
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  boxShadow: const [
                    BoxShadow(color: Color(0xff714321)),
                    BoxShadow(
                      color: Color.fromARGB(255, 238, 209, 187),
                      spreadRadius: -10.0,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      boxShadow: const [
                        BoxShadow(color: Color.fromARGB(255, 248, 158, 49)),
                        BoxShadow(
                          color: Color(0xffFBD050),
                          spreadRadius: -25.0,
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -height * 0.015,
                          right: -width * 0.00,
                          child: GestureDetector(
                            onTap: () {
                              Get.snackbar('Notice', 'Icon tapped!');
                            },
                            child: Material(
                              color: Colors.transparent,
                              child: Transform.rotate(
                                angle: 0.15,
                                child: Container(
                                  width: width * 0.13,
                                  height: width * 0.13,
                                  child: Image.asset(
                                    "assets/images/brand/x.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(19),
                              width: width,
                              padding: EdgeInsets.only(
                                top: height * 0.07,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 0,
                                    blurRadius: 5.0,
                                  ),
                                  const BoxShadow(
                                    color: Color(0xffE5BF98),
                                  ),
                                  const BoxShadow(
                                    color: Color(0xffFFF1DD),
                                    spreadRadius: -2.0,
                                    blurRadius: 12.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/images/brand/sun.png",
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 5),
                                    height: height * 0.18,
                                    width: width * 0.35,
                                    child: Image.network(
                                      fit: BoxFit.fill,
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjtJ1hzjN-R1FI9BfWxQ56vhVT8Bn9dXUzYQMKPsG7ay1A3VTP",
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Your content goes here...",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "ComicSansMSS",
                                        fontSize: 17,
                                        color: Color(0xff4C519E),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Positioned GestureDetector for 'x.png'
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, -1.125),
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.005),
                  height: height * 0.09,
                  width: width * 0.6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/zaavar/beleg.png"),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment(0, -0.25),
                    child: Text(
                      "Тоглох эрх",
                      style: TextStyle(
                        fontFamily: "ComicSansMSS",
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Color(0xff4b509d),
                            blurRadius: 2.0,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
