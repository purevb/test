import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyDialog extends StatelessWidget {
  final double width;
  final double height;

  const MyDialog({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        height: height * 0.7,
        // width: 5000,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: height * 0.66,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  boxShadow: const [
                    BoxShadow(color: Color(0xff714321)),
                    BoxShadow(
                      color: Color(0xffD7803F),
                      spreadRadius: -12.0,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 16, top: 16, right: 16, left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    boxShadow: const [
                      BoxShadow(color: Color.fromARGB(255, 248, 158, 49)),
                      BoxShadow(
                        color: Color(0xffFBD050),
                        spreadRadius: -25.0,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Stack(children: [
                  Align(
                    alignment: const Alignment(1.15, -1.18),
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Transform.rotate(
                        angle: 0.1,
                        child: Image.asset(
                          "assets/images/brand/x.png",
                          width: width * 0.15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(
                    //     top: height * 0.05, bottom: 12, right: 8, left: 8),

                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        // color: const Color(0xffFAE3C1),
                        borderRadius: BorderRadius.circular(26)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: Image.asset(
                        "assets/images/brand/nar.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
              left: width * 0.05,
              top: height * 0.064,
              child: SizedBox(
                width: width * 0.17,
                height: width * 0.17,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/brand/zuv.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
