import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/ComponentsforHome/Button.dart';
import 'package:oilgood_avaarai/pages/Brand.dart';
import 'package:oilgood_avaarai/pages/Instructions.dart';
import 'package:oilgood_avaarai/pages/Present.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              left: width * 0.03, right: width * 0.03, bottom: height * 0.04),
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/images/home/homepage1.png",
            ),
            fit: BoxFit.fill,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: EdgeInsets.only(top: height * 0.04),
                      child: Image.asset(
                        "assets/images/home/back.png",
                        width: width * 0.12,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/home/avaarai.png",
                    width: width * 0.55,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => const InstructionsPage()),
                    child: Container(
                      padding: EdgeInsets.only(top: height * 0.04),
                      child: Image.asset(
                        "assets/images/home/question.png",
                        width: width * 0.12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.6,
                child: Image.asset("assets/images/home/iphone.png"),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: width * 0.01),
                  height: height * 0.35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => print("delguur"),
                        child: Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: -6.0,
                              blurRadius: 20.0,
                            )
                          ]),
                          child: Stack(
                            alignment: const Alignment(0, 0.8),
                            children: [
                              Image.asset(
                                "assets/images/home/delguur.png",
                                width: width * 0.19,
                                height: width * 0.19,
                              ),
                              const Text(
                                "Дэлгүүр",
                                style: TextStyle(
                                    fontFamily: "ComicSansMS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          // Image.asset(
                          //   "assets/images/home/delguur.png",
                          //   width: width * 0.19,
                          //   height: width * 0.19,
                          // ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const BrandPage()),
                        child: Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: -6.0,
                              blurRadius: 20.0,
                            )
                          ]),
                          child: Stack(
                            alignment: const Alignment(0, 0.8),
                            children: [
                              Image.asset(
                                "assets/images/home/brand.png",
                                width: width * 0.19,
                                height: width * 0.19,
                              ),
                              const Text(
                                "Брэнд",
                                style: TextStyle(
                                    fontFamily: "ComicSansMS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const PresentPage()),
                        child: Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: -6.0,
                              blurRadius: 20.0,
                            )
                          ]),
                          child: Stack(
                            alignment: const Alignment(0, 0.65),
                            children: [
                              Image.asset(
                                "assets/images/home/beleg.png",
                                width: width * 0.19,
                                height: width * 0.19,
                              ),
                              const Text(
                                "Бэлэг",
                                style: TextStyle(
                                    fontFamily: "ComicSansMS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          // Image.asset(
                          //   "assets/images/home/beleg.png",
                          //   width: width * 0.19,
                          //   height: width * 0.19,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width,
                height: height * 0.2,
                // color: Colors.white,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    MyButton(
                        paths: "assets/images/home/togloh.png",
                        text: "Тоглох",
                        width: width,
                        height: height),
                    Positioned(
                      right: width * 0.18,
                      bottom: height * 0.06,
                      child: Container(
                        width: width * 0.13,
                        height: height * 0.06,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/images/home/too.png"),
                        )),
                        child: const Align(
                          alignment: Alignment(0, -1),
                          child: Text(
                            "9",
                            style: TextStyle(
                                fontFamily: "ComicSansMS",
                                color: Colors.white,
                                fontSize: 32),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
