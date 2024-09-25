import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JackJill extends StatelessWidget {
  final String logo;
  final String path;
  final String name;
  final String detail;

  const JackJill(
      {required this.logo,
      required this.path,
      required this.name,
      required this.detail,
      super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff78A0CF),
                Color(0xff2351A1),
              ])),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            // border: Border.all(width: 3, color: const Color(0xff4081F9))
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: width * 0.07,
                        left: width * 0.07,
                        top: height * 0.03),
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              path,
                            ))),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          maxLines: 1,
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                            maxLines: 1,
                            detail,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown))
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: height * 0.015,
                left: width * 0.028,
                child: Container(
                  height: height * 0.03,
                  width: height * 0.03,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xff4081F9)),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.network(
                      logo,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
