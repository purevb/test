import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oilgood_avaarai/Popups/components/SuccesGameAfter.dart';
import 'package:oilgood_avaarai/Popups/components/Beleg.dart';
import 'package:oilgood_avaarai/Popups/components/MyPopUp.dart';
import 'package:oilgood_avaarai/Popups/components/EhniiErh.dart';
import 'package:oilgood_avaarai/Popups/components/UldegdelHureltsehgui.dart';
import 'package:oilgood_avaarai/Popups/components/brandStory.dart';
import 'package:oilgood_avaarai/Popups/components/dropback.dart';

class Superbeleg extends StatelessWidget {
  const Superbeleg({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body:
            //     Uldegdelhureltsehgui(
            //   width: width,
            //   height: height,
            // )
            //         MyErh(
            //   width: width,
            //   height: height,
            // )
            //         BrandStory(
            //   height: height,
            //   width: width,
            // )
            DropBack(width: width, height: height)
        //         Amjilttai(
        //   width: width,
        //   height: height,
        // )
        //     MyPopUp(
        //   width: width,
        //   height: height,
        // ),
        );
  }
}
