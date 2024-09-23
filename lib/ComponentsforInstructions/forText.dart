import 'package:flutter/material.dart';

class ForText extends StatelessWidget {
  final String text;
  const ForText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
            color: Color(0xff4b519d),
            fontSize: 16,
            fontFamily: "ComicSansMS",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
