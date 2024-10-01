import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/Components/ComponentsforInstructions/forText.dart';

class InstructionsPage extends StatelessWidget {
  const InstructionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<String> instructions = [
      "Instruction 1",
      "Instruction 2",
      "Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3Instruction 3",
      "Instruction 4",
      "Instruction 5",
      "Instruction 6",
    ];

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
                    IntrinsicHeight(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: height * 0.026, horizontal: width * 0.05),
                        width: width,
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
                        child: Column(
                          children: instructions.map((instruction) {
                            return ForText(
                              text: instruction,
                              width: width,
                              height: height,
                              path:
                                  "https://img.freepik.com/free-photo/free-photo-black-grunge-abstract-background-pattern-wallpaper_1340-34114.jpg?size=626&ext=jpg",
                            );
                          }).toList(),
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
                      IntrinsicHeight(
                        child: Column(
                          children: instructions.map((instruction) {
                            return ForText(
                              text: instruction,
                              width: width,
                              height: height,
                              path:
                                  "https://img.freepik.com/free-photo/free-photo-black-grunge-abstract-background-pattern-wallpaper_1340-34114.jpg?size=626&ext=jpg",
                            );
                          }).toList(),
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
