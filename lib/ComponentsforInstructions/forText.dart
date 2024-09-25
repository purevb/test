import 'package:flutter/material.dart';

class ForText extends StatelessWidget {
  final String text;
  final String path;
  const ForText({required this.path, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            text,
            style: const TextStyle(
                color: Color(0xff4b519d),
                fontSize: 16,
                fontFamily: "ComicSansMS",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(path)))
        ],
      ),
    );
  }
}
