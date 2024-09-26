import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/Components/ComponentsforInstructions/forText.dart';

class InstructionsPage extends StatelessWidget {
  const InstructionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    int itemCount = 10;
    double itemHeight = height * 0.05;

    double totalListViewHeight = itemCount * itemHeight;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: height * 0.05),
            color: const Color(0xfffbd050),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: height * 0.026, horizontal: width * 0.05),
                      width: width,
                      height: height * 0.6,
                      decoration: BoxDecoration(
                          color: const Color(0xfffff1de),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: SizedBox(
                        child: ListView.builder(
                          padding: EdgeInsets.only(
                              top: height * 0.05, bottom: height * 0.05),
                          itemCount: itemCount,
                          itemBuilder: (BuildContext context, int index) {
                            return ForText(
                                text: "sad",
                                width: width,
                                height: height,
                                path:
                                    "https://img.freepik.com/free-photo/free-photo-black-grunge-abstract-background-pattern-wallpaper_1340-34114.jpg?size=626&ext=jpg");
                          },
                        ),
                      ),
                    ),
                    Positioned(
                        top: -height * 0.028,
                        left: width * 0.11,
                        child: GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            padding: const EdgeInsets.only(top: 30),
                            child: Image.asset(
                              "assets/images/home/back.png",
                              width: width * 0.11,
                            ),
                          ),
                        )),
                    Positioned(
                        top: height * 0.01,
                        right: width * 0.3,
                        child: Image.asset("assets/images/zaavar/zaavar.png")),
                    Positioned(
                        top: height * 0.01,
                        left: width * 0.38,
                        child: const Text(
                          "Зaaвaр",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontFamily: 'ComicSansMSS',
                            shadows: [
                              Shadow(
                                color: Color(0xff4b509d),
                                blurRadius: 2.0,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Container(
                  height: height * 0.6,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xfffff1de),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(16)),
                  margin: EdgeInsets.only(
                    top: height * 0.04,
                    right: width * 0.05,
                    left: width * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.01, horizontal: width * 0.05),
                  child: Column(
                    children: [
                      const Text(
                        "-Эрх aвaх зaaвaр-",
                        style: TextStyle(
                            fontFamily: "ComicSansMS",
                            color: Color(0xff4b519d),
                            fontSize: 24),
                      ),
                      SizedBox(
                        height: totalListViewHeight,
                        child: ListView.builder(
                          itemCount: itemCount,
                          itemBuilder: (BuildContext context, int index) {
                            return ForText(
                                text: "sad",
                                width: width,
                                height: height,
                                path:
                                    "https://img.freepik.com/free-photo/free-photo-black-grunge-abstract-background-pattern-wallpaper_1340-34114.jpg?size=626&ext=jpg");
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
