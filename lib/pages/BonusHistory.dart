import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:oilgood_avaarai/Components/ComponentsforBonus/Items.dart';

class BonusHistory extends StatelessWidget {
  const BonusHistory({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: height * 0.0518),
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          height: height,
          width: width,
          decoration: const BoxDecoration(color: Color(0xffFBD050)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                width: width * 0.9,
                height: height * 0.81,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),

                  // border: Border.all(
                  //     color: const Color.fromARGB(255, 245, 185, 6), width: 3),
                  color: const Color(0xfffff1de),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                    )
                  ],
                ),
                child: ListView.builder(
                    padding: const EdgeInsets.only(top: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return const MyItems(
                          path:
                              "https://t3.ftcdn.net/jpg/02/28/05/32/240_F_228053219_FNSAPKd8PrTU1DDk0vBddhHix38sjYpo.jpg",
                          title: "Goku",
                          subTitle: "Son",
                          date: "2016.15.15");
                    },
                    itemCount: 10),
              ),
              Positioned(
                top: height * 0.03,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      height: height * 0.05,
                      width: width * 0.76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        // color: const Color(0xfffff1de),
                        border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 191, 152, 128)),
                        boxShadow: const [
                          // BoxShadow(
                          //     color: Colors.white70,
                          //     blurRadius: 5,
                          //     spreadRadius: 10),

                          BoxShadow(
                            color: Color.fromARGB(255, 191, 152, 128),
                            spreadRadius: 0,
                            blurRadius: 15,
                          ),
                          BoxShadow(
                              color: Color.fromARGB(225, 255, 241, 222),
                              blurRadius: 0,
                              spreadRadius: 0),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Урамшууллын түүх",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "ComicSansMSS",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
