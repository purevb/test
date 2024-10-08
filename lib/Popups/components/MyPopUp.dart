import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPopUp extends StatelessWidget {
  final double width;
  final double height;

  const MyPopUp({required this.width, required this.height, super.key});

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
              // IntrinsicHeight(
              //   child:
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
                child: IntrinsicHeight(
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
                          alignment: const Alignment(1.15, -1.2),
                          child: InkWell(
                            onTap: () {
                              print("object");
                            },
                            // =>
                            //  Get.back(),
                            child: Transform.rotate(
                              angle: 0.15,
                              child: Container(
                                // color: Colors.amber,
                                child: Image.asset(
                                  "assets/images/brand/x.png",
                                  width: width * 0.13,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: width,
                              margin: const EdgeInsets.only(bottom: 7.5),
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
                                      "Your content goes heqerqwerqwerqwer ",
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
                            Container(
                              height: height * 0.16,
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 20),
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
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
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Таны цуглуулсан үсэг",
                                    style: TextStyle(
                                      fontFamily: "ComicSansMSS",
                                      fontSize: 17,
                                      color: Color(0xff4C519E),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: width * 0.64,
                                  //   child: Image.asset(
                                  //       "assets/images/home/iphone.png"),
                                  // ),
                                  Container(
                                    width: width,
                                    height: height * 0.1,
                                    child: Stack(
                                      children: [
                                        Align(
                                            alignment:
                                                const Alignment(-0.9, -0.6),
                                            child: Image.asset(
                                              "assets/images/colored/i.png",
                                              width: width * 0.129,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment:
                                                const Alignment(-0.6, -0.55),
                                            child: Image.asset(
                                              "assets/images/colored/p.png",
                                              width: width * 0.118,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment:
                                                const Alignment(-0.34, -0.5),
                                            child: Image.asset(
                                              "assets/images/colored/h.png",
                                              width: width * 0.125,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment:
                                                const Alignment(-0.05, -0.6),
                                            child: Image.asset(
                                              "assets/images/colored/o.png",
                                              width: width * 0.12,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment:
                                                const Alignment(0.2, -0.5),
                                            child: Image.asset(
                                              "assets/images/colored/n.png",
                                              width: width * 0.115,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment:
                                                const Alignment(0.465, -0.5),
                                            child: Image.asset(
                                              "assets/images/noColor/e.png",
                                              width: width * 0.115,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment:
                                                const Alignment(0.75, -0.2),
                                            child: Image.asset(
                                              "assets/images/colored/1.png",
                                              width: width * 0.145,
                                              // height: height * 0.08,
                                            )),
                                        Align(
                                            alignment: const Alignment(1, -0.7),
                                            child: Image.asset(
                                              "assets/images/colored/6.png",
                                              width: width * 0.114,
                                              // height: height * 0.08,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // ),
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
                      "Супер бэлэг",
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
