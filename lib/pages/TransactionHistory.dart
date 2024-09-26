import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:oilgood_avaarai/Components/ComponentsforBonus/Items.dart';
import 'package:oilgood_avaarai/Components/ComponentsforTransaction/tile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

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
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.043,
                  ),
                  width: width * 0.9,
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
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const MyTile(
                                path:
                                    "https://t3.ftcdn.net/jpg/02/28/05/32/240_F_228053219_FNSAPKd8PrTU1DDk0vBddhHix38sjYpo.jpg",
                                title: "Goku",
                                subTitle: "Son",
                                date: "2016.15.15"),
                            Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              direction: Axis.horizontal,
                              children: List.generate(
                                  30,
                                  (index) => const SizedBox(
                                        width: 6,
                                        height: 1.5,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          ),
                                        ),
                                      )),
                            )
                          ],
                        );
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
                            "Гүйлгээний түүх",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "ComicSansMS",
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
      ),
    );
  }
}
