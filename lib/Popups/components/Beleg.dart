import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBeleg extends StatelessWidget {
  final double width;
  final double height;
 // final String path;
  // final String text;
  const MyBeleg({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.bottomCenter,
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
                  padding: const EdgeInsets.all(16),
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
                    children: [
                      Align(
                        alignment: const Alignment(1.18, -1.28),
                        child: GestureDetector(
                          onTap: () => Get.back(),
                          child: Transform.rotate(
                            angle: 0.1,
                            child: Image.asset(
                              "assets/images/brand/x.png",
                              width: width * 0.15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        padding: EdgeInsets.only(top: height * 0.07),
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              height: height * 0.18,
                              width: width * 0.35,
                              child: Image.network(
                                fit: BoxFit.fill,
                                "https://imgs.search.brave.com/9m7fjaZjq1L39TkluKP7u8TtD3InYx4S0kExw765DOc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/aXBob25lLWJhY2tn/cm91bmQtbmF0dXJl/LmpwZz93aWR0aD0x/MDAwJmZvcm1hdD1w/anBnJmV4aWY9MCZp/cHRjPTA",
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                "Your content goes heqerqwerqwesdfgsadfasdfasdfasdfasdfasddfgsdfgsdfg sdgsd gs gsdfg sdgsdfg darsg rqwer ",
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
                      "Бэлэг",
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
