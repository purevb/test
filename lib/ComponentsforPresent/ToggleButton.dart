import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final bool isActive;
  const ToggleButton(
      {required this.text,
      required this.width,
      required this.height,
      required this.isActive,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            isActive
                ? "assets/images/beleg/actvie.png"
                : "assets/images/beleg/inactive.png",
          ),
        ),
      ),
      child: Align(
        alignment: const Alignment(0, -0.1),
        child: Text(
          text,
          style: const TextStyle(
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
    );
  }
}
