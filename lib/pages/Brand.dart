import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/ComponentsforBrand/RightSide.dart';
import 'package:oilgood_avaarai/ComponentsforBrand/dialog.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 5.0,
                  )
                ],
              ),
              child: GridView.builder(
                  // scrollDirection: Axis.vertical,
                  // physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.05,
                      right: width * 0.05,
                      bottom: height * 0.02),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 3.25 / 3,
                    // mainAxisExtent: 180
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Get.dialog(
                        const Dialog(
                            insetPadding:
                                EdgeInsets.only(bottom: 0, left: 15, right: 15),
                            backgroundColor: Colors.transparent,
                            child: MyDialog()

                            // Container(
                            //   width: width,
                            //   height: height * 0.6,
                            //   decoration: const BoxDecoration(
                            //       image: DecorationImage(
                            //     image: AssetImage(
                            //         "assets/images/brand/stroy.png"),
                            //   )),
                            // )
                            // Image.asset("assets/images/brand/story.png"),
                            ),
                      ),
                      child: const RightSide(),
                    );
                  }),
            ),
            Positioned(
                top: -height * 0.025,
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
              top: height * 0.004,
              right: width * 0.245,
              child: Container(
                width: width * 0.55,
                height: height * 0.067,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/zaavar/zaavar.png"),
                )),
                child: const Align(
                  alignment: Alignment(0, -0.5),
                  child: Text(
                    "Брэнд",
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
          ],
        ),
      )),
    );
  }
}
