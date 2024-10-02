import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DropBack extends StatelessWidget {
  final double width;
  final double height;

  const DropBack(
      { // required this.path,
      // required this.text,
      required this.width,
      required this.height,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 10, top: 50),
          padding: const EdgeInsets.all(10),
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none, // Allow overflow
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff78A0CF),
                      Color(0xff2351A1),
                    ],
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      right: -width * 0.01,
                      top: -height * 0.025,
                      child: GestureDetector(
                        onTap: () {
                          print("s");
                        },
                        child: Material(
                          color: Colors.transparent,
                          child: Transform.rotate(
                            angle: 0.15,
                            child: Container(
                              width: width * 0.14,
                              height: width * 0.14,
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/images/brand/x.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width,
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 5.0,
                              ),
                              const BoxShadow(
                                color: Color(0xffE5BF98),
                              ),
                              const BoxShadow(
                                color: Color(0xffFFF1DD),
                                spreadRadius: -2.0,
                                blurRadius: 12.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(26),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/brand/sun.png",
                              ),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              "Аль нэг замыг сонгон бөмбөгөө унгааж тоглоомоо эхлүүлээрэй.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "ComicSansMSS",
                                fontSize: 17,
                                color: Color(0xff4C519E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const Alignment(-0.75, -1.125),
                child: Container(
                  width: width * 0.11,
                  height: height * 0.06,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/beleg/gar.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
