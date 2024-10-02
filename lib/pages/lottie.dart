import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class LottieFile extends StatefulWidget {
  const LottieFile({super.key});

  @override
  State<LottieFile> createState() => _LottieFileState();
}

class _LottieFileState extends State<LottieFile> with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isAnimationCompleted = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isAnimationCompleted = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              if (!_isAnimationCompleted)
                Container(
                  width: width,
                  height: height,
                  child: LottieBuilder.asset(
                    frameRate: const FrameRate(80),
                    fit: BoxFit.fill,
                    "assets/animations/start.json",
                    controller: _animationController,
                    onLoaded: (composition) {
                      _animationController.duration = composition.duration;
                      _animationController.forward();
                    },
                    repeat: true,
                  ),
                )
              // else
              //   Container(
              //     // margin: const EdgeInsets.only(left: 63.1),
              //     width: width,
              //     height: height,
              //     child: Image.asset("assets/images/home/iphone.png"),
              //   ),
              // Container(
              //   margin: const EdgeInsets.only(top: 399.5, left: 5),
              //   width: width,
              //   height: height * 0.1,
              //   child: Stack(
              //     children: [
              //       Align(
              //           alignment: const Alignment(-0.67, 0),
              //           child: Image.asset(
              //             "assets/images/colored/i.png",
              //             width: width * 0.121,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(-0.45, -0.04),
              //           child: Image.asset(
              //             "assets/images/colored/p.png",
              //             width: width * 0.11,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(-0.26, 0.1),
              //           child: Image.asset(
              //             "assets/images/colored/h.png",
              //             width: width * 0.115,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(-0.05, 0),
              //           child: Image.asset(
              //             "assets/images/colored/o.png",
              //             width: width * 0.11,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(0.13, 0),
              //           child: Image.asset(
              //             "assets/images/colored/n.png",
              //             width: width * 0.108,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(0.32, 0),
              //           child: Image.asset(
              //             "assets/images/colored/e.png",
              //             width: width * 0.108,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(0.52, 0.2),
              //           child: Image.asset(
              //             "assets/images/colored/1.png",
              //             width: width * 0.131,
              //             // height: height * 0.08,
              //           )),
              //       Align(
              //           alignment: const Alignment(0.705, -0.18),
              //           child: Image.asset(
              //             "assets/images/colored/6.png",
              //             width: width * 0.105,
              //             // height: height * 0.08,
              //           )),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
