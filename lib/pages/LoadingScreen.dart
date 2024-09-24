import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oilgood_avaarai/pages/HomePage.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xfffff1de),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: SvgPicture.asset("assets/images/oilgood.svg"),
              ),
              Container(
                width: 65,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF10adce),
                ),
              ),
              GestureDetector(
                  onTap: () => Get.to(() => const HomePage()),
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 212, 180, 141)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffe4c196),
                          ),
                          BoxShadow(
                            color: Color(0xfffff1de),
                            spreadRadius: -12.0,
                            blurRadius: 20.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text("tip:Lorem Ipsum"),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
