import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
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
              margin: const EdgeInsets.only(top: 0, bottom: 5, left: 0),
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
              // child: Stack(
              //   children: [
              //     Positioned(
              //       right: 0,
              //       top: -5,
              //       child: Image.asset(
              //         "assets/images/brand/x.png",
              //         width: width * 0.15,
              //       ),
              //     ),
              //     // Container(
              //     //   margin:
              //     //       const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
              //     //   // width: width * 0.7,
              //     //   // height: height * 0.38,
              //     //   decoration: BoxDecoration(
              //     //       color: const Color(0xffFAE3C1),
              //     //       borderRadius: BorderRadius.circular(27)),
              //     // ),
              //   ],
              // ),
            ),
          ),
          Align(
            alignment: const Alignment(1.1, -1.01), // Alignment stays the same
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Transform.rotate(
                angle: 0.1, // Set the rotation angle in radians
                child: Image.asset(
                  "assets/images/brand/x.png",
                  width: width * 0.15,
                ),
              ),
            ),
          ),
          Container(
              width: width * 0.88,
              height: height * 0.65,
              padding: const EdgeInsets.only(bottom: 16),
              // margin: EdgeInsets.only(
              //     top: height * 0.05, bottom: 12, right: 8, left: 8),

              // width: 100,
              // height: 100,
              decoration: BoxDecoration(
                  // color: const Color(0xffFAE3C1),
                  borderRadius: BorderRadius.circular(26)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(26),
                child: Image.asset(
                  "assets/images/brand/nar.jpg",
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
            left: width * 0.05,
            top: height * 0.064,
            child: SizedBox(
              width: width * 0.17,
              height: height * 0.09,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/brand/zuv.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
