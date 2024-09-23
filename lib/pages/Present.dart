import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PresentPage extends StatelessWidget {
  const PresentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(color: Color(0xffFBD050)),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: height * 0.03, horizontal: width * 0.055),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xfffff1de),
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
                right: width * 0.25,
                child: Container(
                  width: width * 0.5,
                  height: height * 0.06,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/zaavar/zaavar.png"),
                  )),
                  child: const Align(
                    alignment: Alignment(0, -0.5),
                    child: Text(
                      "Бэлэг",
                      style: TextStyle(
                        fontSize: 24,
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
                    ),
                  ),
                ),
              ),

              // Positioned(Color.fromARGB(255, 117, 86, 86)   //     top: height * 0.015,
              //     left: width * 0.41,
              //     child: const Text(
              //       "Брэнд",
              //       style: TextStyle(
              //         fontSize: 24,
              //         color: Colors.white,
              //         fontFamily: 'ComicSansMS',
              //         shadows: [
              //           Shadow(
              //             color: Color(0xff4b509d),
              //             blurRadius: 2.0,
              //             offset: Offset(3.0, 3.0),
              //           ),
              //         ],
              //       ),
              //     )),
            ],
          ),
        )),
      ),
    );
  }
}
