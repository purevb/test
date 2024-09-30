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
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          if (!_isAnimationCompleted)
            Container(
              width: width,
              height: height,
              child: LottieBuilder.asset(
                "assets/animations/iphone.json",
                controller: _animationController,
                onLoaded: (composition) {
                  _animationController.duration = composition.duration;
                  _animationController.forward();
                },
                repeat: false,
              ),
            )
          else
            Container(
              margin: const EdgeInsets.only(left: 63.1),
              width: width * 0.7165,
              height: height,
              child: Image.asset("assets/images/home/iphone.png"),
            ),
          Container(
            margin: const EdgeInsets.only(top: 437, right: 4.8),
            width: width,
            height: height * 0.1,
            child: Stack(
              children: [
                Align(
                    alignment: const Alignment(-0.67, 0),
                    child: Image.asset(
                      "assets/images/colored/i.png",
                      width: width * 0.121,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(-0.45, -0.04),
                    child: Image.asset(
                      "assets/images/colored/p.png",
                      width: width * 0.11,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(-0.26, 0.1),
                    child: Image.asset(
                      "assets/images/colored/h.png",
                      width: width * 0.115,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(-0.05, 0),
                    child: Image.asset(
                      "assets/images/noColor/o.png",
                      width: width * 0.11,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(0.13, 0),
                    child: Image.asset(
                      "assets/images/noColor/n.png",
                      width: width * 0.108,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(0.32, 0),
                    child: Image.asset(
                      "assets/images/colored/e.png",
                      width: width * 0.108,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(0.52, 0.2),
                    child: Image.asset(
                      "assets/images/noColor/1.png",
                      width: width * 0.131,
                      // height: height * 0.08,
                    )),
                Align(
                    alignment: const Alignment(0.7, -0.18),
                    child: Image.asset(
                      "assets/images/noColor/6.png",
                      width: width * 0.105,
                      // height: height * 0.08,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
