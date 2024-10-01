import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oilgood_avaarai/Components/ComponentsforHome/Button.dart';
import 'package:oilgood_avaarai/Components/ComponentsforShop/xButton.dart';
import 'package:oilgood_avaarai/pages/Brand.dart';
import 'package:oilgood_avaarai/pages/Instructions.dart';
import 'package:oilgood_avaarai/pages/Present.dart';
import 'package:oilgood_avaarai/pages/TransactionHistory.dart';
import 'package:oilgood_avaarai/pages/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isAnimationCompleted = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isAnimationCompleted = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.05,
                  bottom: height * 0.04),
              width: width,
              height: height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/images/home/realhomepage.png",
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
                        width: width * 0.6,
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
                    height: height * 0.001,
                    child:
                        LottieBuilder.asset("assets/animations/Iphone16.json"),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.76,
                    child: Stack(
                      children: [
                        if (!_isAnimationCompleted)
                          Align(
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 1),
                                width: width * 1.061,
                                child: LottieBuilder.asset(
                                  "assets/animations/iphone.json",
                                  controller: _animationController,
                                  onLoaded: (composition) {
                                    _animationController.duration =
                                        composition.duration;
                                    _animationController.forward();
                                  },
                                  repeat: false,
                                ),
                              ),
                            ),
                          )
                        else
                          // SizedBox(
                          //   height: height * 0.078,
                          //   width: width * 0.76,
                          //   child: Image.asset(
                          //     "assets/images/home/iphone.png",
                          //     fit: BoxFit.fill,
                          //   ),
                          // ),
                          Container(
                            // margin: const EdgeInsets.only(top: 399.5, left: 5),
                            width: width,
                            height: height * 0.1,
                            child: Stack(
                              children: [
                                Align(
                                    alignment: const Alignment(-1, -0.6),
                                    child: Image.asset(
                                      "assets/images/colored/i.png",
                                      width: width * 0.129,
                                      // height: height * 0.08,
                                    )),
                                Align(
                                    alignment: const Alignment(-0.66, -0.5),
                                    child: Image.asset(
                                      "assets/images/colored/p.png",
                                      width: width * 0.118,
                                      // height: height * 0.08,
                                    )),
                                Align(
                                    alignment: const Alignment(-0.4, 0.1),
                                    child: Image.asset(
                                      "assets/images/colored/h.png",
                                      width: width * 0.125,
                                      // height: height * 0.08,
                                    )),
                                Align(
                                    alignment: const Alignment(-0.09, -0.3),
                                    child: Image.asset(
                                      "assets/images/colored/o.png",
                                      width: width * 0.12,
                                      // height: height * 0.08,
                                    )),
                                Align(
                                    alignment: const Alignment(0.16, 0),
                                    child: Image.asset(
                                      "assets/images/colored/n.png",
                                      width: width * 0.115,
                                      // height: height * 0.08,
                                    )),
                                Align(
                                    alignment: const Alignment(0.445, -0.2),
                                    child: Image.asset(
                                      "assets/images/colored/e.png",
                                      width: width * 0.115,
                                      // height: height * 0.08,
                                    )),
                                Align(
                                    alignment: const Alignment(0.75, 1),
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
                          )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: height * 0.35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => bottomsheet(context, height, width),
                            child: Container(
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: -6.0,
                                  blurRadius: 20.0,
                                )
                              ]),
                              child: Stack(
                                alignment: const Alignment(0, 0.75),
                                children: [
                                  Image.asset(
                                    "assets/images/home/delguur.png",
                                    width: width * 0.19,
                                    height: width * 0.19,
                                  ),
                                  const Text(
                                    "Дэлгүүр",
                                    style: TextStyle(
                                        fontFamily: "ComicSansMSS",
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
                                alignment: const Alignment(0, 0.75),
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
                    height: height * 0.24,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        GestureDetector(
                          onTap: () => Get.to(
                            () => const LottieFile(),
                            transition: Transition.fadeIn,
                            duration: const Duration(milliseconds: 500),
                          ),

                          // Get.to(() => Container(
                          //       width: width,
                          //       height: height,
                          //       child: LottieBuilder.asset(
                          //         frameRate: const FrameRate(10),
                          //         fit: BoxFit.fill,
                          //         "assets/animations/start.json",
                          //         controller: _animationController,
                          //         onLoaded: (composition) {
                          //           _animationController.duration =
                          //               composition.duration;
                          //           _animationController.forward();
                          //         },
                          //         repeat: true,
                          //       ),
                          //     )),
                          child: MyButton(
                              paths: "assets/images/home/togloh.png",
                              text: "Тоглох",
                              width: width,
                              height: height),
                        ),
                        Positioned(
                          right: width * 0.15,
                          bottom: height * 0.05,
                          child: Container(
                            width: width * 0.13,
                            height: height * 0.06,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/images/home/too.png"),
                            )),
                            child: const Align(
                              widthFactor: 10,
                              heightFactor: 10,
                              alignment: Alignment(0, -0.8),
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
            // Positioned(
            //   top: height * 0.159,
            //   left: -width * 0.028,
            //   child:,
            // )
          ],
        ),
      ),
    );
  }

  Future<dynamic> bottomsheet(
      BuildContext context, double height, double width) {
    return showMaterialModalBottomSheet(
      backgroundColor: Colors.transparent,
        context: context,
      builder: (context) => IntrinsicHeight(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    height: height * 0.1,
                    color: Colors.transparent,
                  ),
                  Container(
                      width: width,
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.015,
                            width: width,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff78A0CF),
                                  Color(0xff2351A1),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.535,
                            padding: EdgeInsets.only(
                                top: height * 0.04,
                                left: 20,
                                right: 20,
                                bottom: 20),
                            width: width,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffFBD050),
                                  Color(0xffFBAD50),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 0,
                                          blurRadius: 5.0,
                                        )
                                      ],
                                      color: const Color(0xfffff1de),
                                      borderRadius: BorderRadius.circular(31)),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      padding: const EdgeInsets.only(
                                          top: 25,
                                          right: 20,
                                          left: 20,
                                          bottom: 30),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 30,
                                        crossAxisCount: 3,
                                        mainAxisExtent: height * 0.09,
                                        // childAspectRatio:
                                        //     2 / 5
                                      ),
                                      itemCount: 6,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () => print("1x"),
                                          child: Xbutton(
                                            multiple: 'x1',
                                            price: '300₮',
                                            width: width,
                                            height: height,
                                          ),
                                        );
                                      }),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // margin: const EdgeInsets.only(bottom: 20),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 20),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 0,
                                          blurRadius: 5.0,
                                        )
                                      ],
                                      color: const Color(0xfffff1de),
                                      borderRadius: BorderRadius.circular(31)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () => print("minus"),
                                              child: Container(
                                                width: width * 0.12,
                                                height: width * 0.12,
                                                margin: const EdgeInsets.only(
                                                    bottom: 20),
                                                child: Image.asset(
                                                  "assets/images/home/bottomsheet/hasah.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: width * 0.45,
                                              height: height * 0.07,
                                              margin: const EdgeInsets.only(
                                                  bottom: 20),
                                              child: Image.asset(
                                                "assets/images/home/bottomsheet/multiple.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () => print("add"),
                                              child: Container(
                                                width: width * 0.12,
                                                height: width * 0.12,
                                                margin: const EdgeInsets.only(
                                                    bottom: 20),
                                                child: Image.asset(
                                                  "assets/images/home/bottomsheet/nemh.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        maxLines: 2,
                                        "s",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () => Get.to(() =>
                                                  const TransactionHistory()),
                                              child: Container(
                                                width: width * 0.15,
                                                height: width * 0.15,
                                                child: Image.asset(
                                                  "assets/images/beleg/time.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () => print("buyb"),
                                              child: Container(
                                                width: width * 0.66,
                                                height: height * 0.063,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                            "assets/images/home/bottomsheet/buy.png"))),
                                                child: const Align(
                                                  alignment: Alignment(0, -0.2),
                                                  child: Text(
                                                    "Худалдаж авах",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "ComicSansMSS",
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        shadows: [
                                                          Shadow(
                                                            color: Color(
                                                                0xff4b509d),
                                                            blurRadius: 2.0,
                                                            offset: Offset(
                                                                3.0, 3.0),
                                                          ),
                                                        ]),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Positioned(
                top: height * 0.051,
                child: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: -6.0,
                      blurRadius: 20.0,
                    )
                  ]),
                  child: Stack(
                    alignment: const Alignment(0, 0.6),
                    children: [
                      Image.asset(
                        "assets/images/home/bottomsheet/shooop.png",
                        width: width * 0.25,
                        height: width * 0.25,
                      ),
                      const Text(
                        "Дэлгүүр",
                        style: TextStyle(
                            fontFamily: "ComicSansMSS",
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
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
