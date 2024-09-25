import 'package:flutter/material.dart';

class ForText extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final String path;
  const ForText(
      {required this.text,
      required this.width,
      required this.height,
      required this.path,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: height*0.01),
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: const TextStyle(
                  color: Color(0xff4b519d),
                  fontSize: 16,
                  fontFamily: "ComicSansMS",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: width * 0.8,
            height: height * 0.18,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                path,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
