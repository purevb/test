import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String paths;
  final double height;
  final double width;

  const MyButton(
      {required this.paths,
      required this.text,
      required this.width,
      required this.height,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.09,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(paths),
      )),
      child: Align(
        alignment: const Alignment(0, -0.8),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: "ComicSansMS",
            color: Colors.white,
            fontSize: 40,
            shadows: [
              Shadow(
                color: Color(0xffc4390f),
                blurRadius: 2.0,
                offset: Offset(3.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
