import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/Components/ComponentsforPresent/Jack.dart';
import 'package:oilgood_avaarai/Components/ComponentsforPresent/ToggleButton.dart';
import 'package:oilgood_avaarai/pages/BonusHistory.dart';

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
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  width: width * 0.9,
                  height: height * 0.81,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xfffff1de),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 5.0,
                      )
                    ],
                  ),
                  child: beleg
                      ? Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Text("Тоглоомоо тоглоод бэлгээ аваарай",
                                  style: TextStyle(
                                      fontFamily: "ComicSansMSS",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            Container(
                              padding: const EdgeInsets.all(3),
                              margin:
                                  EdgeInsets.symmetric(vertical: height * 0.01),
                              width: width,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xff78A0CF),
                                        Color(0xff2351A1),
                                      ])),
                              child: Container(
                                padding: EdgeInsets.only(bottom: height * 0.01),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(11),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://t4.ftcdn.net/jpg/02/98/36/33/240_F_298363329_or4WmbHHNa6mLHKgg5olz5AyaOaCThV7.jpg"))),
                                child: const Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "iPhone 16",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            Container(
                              height: height * 0.5,
                              width: width,
                              child: GridView.builder(
                                  padding: EdgeInsets.only(top: 5),
                                  shrinkWrap: true,
                                  // padding: EdgeInsets.only(
                                  //     top: height * 0.05,
                                  //     left: width * 0.05,
                                  //     right: width * 0.05),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 12,
                                    crossAxisSpacing: 10,
                                    crossAxisCount: 2,
                                    childAspectRatio: 3.44 / 3,
                                    // mainAxisExtent: 150
                                  ),
                                  itemCount: 18,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const JackJill(
                                        logo:
                                            "https://t4.ftcdn.net/jpg/00/64/84/11/240_F_64841101_ri4S0bn81aXsHvWk3UVHYazsA0api11Q.jpg",
                                        path:
                                            "https://t4.ftcdn.net/jpg/00/64/84/11/240_F_64841101_ri4S0bn81aXsHvWk3UVHYazsA0api11Q.jpg",
                                        name: "Jack&Jill",
                                        detail: "250gr");
                                  }),
                            )
                          ],
                        )
                      : Container(
                          margin: const EdgeInsets.only(top: 50, bottom: 100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: width * 0.7,
                                child: Image.asset(
                                    "assets/images/home/iphone.png"),
                              ),
                              Container(
                                height: height * 0.5,
                                width: width,
                                child: GridView.builder(
                                  padding: const EdgeInsets.only(top: 0),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 12,
                                    crossAxisSpacing: 10,
                                    crossAxisCount: 2,
                                    childAspectRatio: 3.44 / 3,
                                    // mainAxisExtent: 150
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const JackJill(
                                        logo:
                                            "https://t4.ftcdn.net/jpg/02/98/36/33/240_F_298363329_or4WmbHHNa6mLHKgg5olz5AyaOaCThV7.jpg",
                                        path:
                                            "https://t4.ftcdn.net/jpg/02/98/36/33/240_F_298363329_or4WmbHHNa6mLHKgg5olz5AyaOaCThV7.jpg",
                                        name: "Jack&Jill",
                                        detail: "250gr");
                                  },
                                ),
                              ),
                            ],
                          ),
                        )),
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
                      width: width * 0.65,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            width: 0.1,
                            color: Color.fromARGB(255, 191, 152, 128)),
                        boxShadow: const [
                          // BoxShadow(
                          //     color: Colors.white70,
                          //     blurRadius: 5,
                          //     spreadRadius: 10),

                          BoxShadow(
                            color: Color.fromARGB(255, 218, 129, 74),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                          BoxShadow(
                              color: Color.fromARGB(225, 255, 241, 222),
                              blurRadius: 5,
                              spreadRadius: 0),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Бэлэг",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "ComicSansMSS",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => const BonusHistory()),
                      child: Image.asset(
                        "assets/images/beleg/time.png",
                        width: width * 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.08,
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
                top: height * 0.08,
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
    );
  }
}
