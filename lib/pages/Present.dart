import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/ComponentsforPresent/ToggleButton.dart'; // Assuming you renamed the buttons

class PresentPage extends StatefulWidget {
  const PresentPage({super.key});

  @override
  State<PresentPage> createState() => _PresentPageState();
}

class _PresentPageState extends State<PresentPage> {
  bool beleg = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.only(
                right: width * 0.05, left: width * 0.05, bottom: height * 0.02),
            height: height,
            width: width,
            decoration: const BoxDecoration(color: Color(0xffFBD050)),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.81,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: const Color.fromARGB(255, 245, 185, 6),
                        width: 3),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffFBD050),
                      ),
                      BoxShadow(
                        color: Color(0xfffff1de),
                        spreadRadius: -1,
                        blurRadius: 10.0,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Align items in the center
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          "assets/images/home/back.png",
                          width: width * 0.11,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.015),
                        width: width * 0.65,
                        height: height * 0.05, // Ensure a consistent height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color.fromARGB(198, 229, 176, 78),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 245, 196, 50),
                            ),
                            BoxShadow(
                              color: Color(0xffFFF1DD),
                              spreadRadius: -5,
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Бэлэг",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "ComicSansMS",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          "assets/images/beleg/time.png",
                          width: width * 0.11,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.105,
                  left: width * 0.03,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      beleg = true;
                    }),
                    child: ToggleButton(
                      width: width * 0.4,
                      height: height * 0.1,
                      text: "Бэлэг",
                      isActive: beleg,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.104,
                  right: width * 0.03,
                  child: GestureDetector(
                      onTap: () => setState(() {
                            beleg = false;
                          }),
                      child: ToggleButton(
                        width: width * 0.42,
                        height: height * 0.1,
                        text: "Миний",
                        isActive: !beleg,
                      )),
                ),
              ],
            )),
      ),
    );
  }
}
