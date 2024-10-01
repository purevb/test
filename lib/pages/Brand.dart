import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oilgood_avaarai/Components/ComponentsforBrand/RightSide.dart';
import 'package:oilgood_avaarai/Components/ComponentsforBrand/dialog.dart';

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
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(
                      top: 40, left: 20, right: 20, bottom: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 3.25 / 3,
                      mainAxisExtent: height * 0.165),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Get.dialog(
                        MyDialog(
                          width: width,
                          height: height,

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
              right: width * 0.23,
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
      ),
    ));
  }
}
