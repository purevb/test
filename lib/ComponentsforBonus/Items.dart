import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyItems extends StatelessWidget {
  final String path;
  final String title;
  final String subTitle;
  final String date;

  const MyItems(
      {required this.path,
      required this.title,
      required this.subTitle,
      required this.date,
      super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: width * 0.02),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff78A0CF),
                            Color(0xff2351A1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Container(
                        width: width * 0.1,
                        height: width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(path),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "ComicSansMS",
                          ),
                        ),
                        Text(
                          subTitle,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "ComicSansMS",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.05,
                // color: Colors.black,
                alignment: Alignment.topCenter,
                child: Text(
                  date,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              30,
              (index) => const SizedBox(
                    width: 6,
                    height: 1.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  )),
        )
      ],
    );
    ;
  }
}
