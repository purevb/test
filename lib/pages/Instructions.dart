import 'package:flutter/material.dart';
import 'package:oilgood_avaarai/ComponentsforInstructions/forText.dart';
import 'package:get/get.dart';

class InstructionsPage extends StatelessWidget {
  const InstructionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: const Color(0xfffbd050),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: height * 0.6,
                    decoration: BoxDecoration(
                        color: const Color(0xfffff1de),
                        borderRadius: BorderRadius.circular(16)),
                    margin: EdgeInsets.only(
                      top: height * 0.03,
                      right: width * 0.05,
                      left: width * 0.05,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return const ForText(
                                  path:
                                      "https://t4.ftcdn.net/jpg/02/98/36/33/240_F_298363329_or4WmbHHNa6mLHKgg5olz5AyaOaCThV7.jpg",
                                  text: "a");
                            })
                        // Padding(
                        //   padding: EdgeInsets.only(top: height * 0.03),
                        //   child: const ForText(
                        //     text:
                        //         "1.Тоглох товчийг дарж тоглоом руу орсноор тоглоом эхэлнэ.",
                        //     path:
                        //         'https://t4.ftcdn.net/jpg/02/98/36/33/240_F_298363329_or4WmbHHNa6mLHKgg5olz5AyaOaCThV7.jpg',
                        //   ),
                        // ),
                      ],
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
                        "Заавар",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontFamily: 'ComicSansMS',
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
                decoration: BoxDecoration(
                    color: const Color(0xfffff1de),
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.only(
                  top: height * 0.04,
                  right: width * 0.05,
                  left: width * 0.05,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.05),
                child: const Column(
                  children: [
                    Text(
                      "-Эрх авах заавар-",
                      style: TextStyle(
                          fontFamily: "ComicSansMS",
                          color: Color(0xff4b519d),
                          fontSize: 24),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
