import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffFBD050), width: 3.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18), // Ensure borderRadius matches
        child: Image.asset(
          "assets/images/brand/nar.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
