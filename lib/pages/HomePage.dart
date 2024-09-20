import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/images/homepage.png",
          ),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/back.png"),
                  ),
                ),
                Image.asset("assets/images/avaarai.png"),
                GestureDetector(
                  onTap: () => print("zaavar"),
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/question.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            SizedBox(
              width: width * 0.75,
              child: Image.asset("assets/images/iphone.png"),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: height * 0.31,
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
                        child: Image.asset(
                          "assets/images/delguur.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("brand"),
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: -6.0,
                            blurRadius: 20.0,
                          )
                        ]),
                        child: Image.asset(
                          "assets/images/brand.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("beleg"),
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: -6.0,
                            blurRadius: 20.0,
                          )
                        ]),
                        child: Image.asset(
                          "assets/images/beleg.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            GestureDetector(
              onTap: () => print("Togloh"),
              child: Image.asset(
                "assets/images/togloh.png",
                width: width * 0.6,
                height: height * 0.1,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
