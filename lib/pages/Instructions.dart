import 'package:flutter/material.dart';
import 'package:oilgood_avaarai/ComponentsforInstructions/forImage.dart';
import 'package:oilgood_avaarai/ComponentsforInstructions/forText.dart';
import 'package:get/get.dart';

class InstructionsPage extends StatelessWidget {
  const InstructionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xfffbd050),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xfffff1de),
                      borderRadius: BorderRadius.circular(16)),
                  margin: EdgeInsets.only(
                    top: height * 0.03,
                    right: width * 0.05,
                    left: width * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: const ForText(
                            text:
                                "1.Тоглох товчийг дарж тоглоом руу орсноор тоглоом эхэлнэ."),
                      ),
                      const ForImage(path: "assets/images/zaavar/zaavar1.png"),
                      const ForText(
                          text:
                              "2.Эрхээ ашиглан бөмбөг буулгах замыг сонгоорой."),
                      const ForImage(
                          path: "assets/images/zaavar/placeholder.png"),
                      const ForText(
                          text:
                              "3. Зам дагуу буулган доорх бэлэsгт хүргэн урамшуулал аваарай."),
                      const ForImage(
                          path: "assets/images/zaavar/placeholder.png"),
                      const ForText(
                          text: "4. Тоглоом тоглосны дараа бэлэг аваарай."),
                      const ForImage(
                          path: "assets/images/zaavar/placeholder.png"),
                      const ForText(
                          text:
                              "5. Тоглоомоос гарч ирэх үсгүүдийг бүрэн цуглуулан iPhone 16 гэсэн үг бүтээж Супер бэлэг авах боломжтой."),
                    ],
                  ),
                ),
                Positioned(
                    top: -height * 0.025,
                    left: width * 0.08,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        padding: const EdgeInsets.only(top: 30),
                        child: Image.asset("assets/images/home/back.png"),
                      ),
                    )),
                Positioned(
                    top: height * 0.01,
                    right: width * 0.3,
                    child: Image.asset("assets/images/zaavar/zaavar.png")),
                Positioned(
                    top: height * 0.01,
                    left: width * 0.38,
                    child: const Text(
                      "Заавар",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'ComicSansMS',
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xfffff1de),
                  borderRadius: BorderRadius.circular(16)),
              margin: EdgeInsets.only(
                top: height * 0.04,
                right: width * 0.05,
                left: width * 0.05,
              ),
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.01, horizontal: width * 0.05),
              child: const Column(
                children: [
                  Text(
                    "-Эрх авах заавар-",
                    style: TextStyle(
                        fontFamily: "ComicSansMS",
                        color: Color(0xff4b519d),
                        fontSize: 24),
                  ),
                  ForText(
                      text:
                          "1.Өөрт ойрхон Номин сүлжээ дэлгүүрээс “Бүтээгдэхүүн” цэсэд байрших бүтээгдэхүүн худалдан авч тоглоомын эрхтэй болох боломжтой.​"),
                  ForImage(path: "assets/images/zaavar/placeholder.png"),
                  ForText(
                      text:
                          "2. “Бүтээгдэхүүн” цэсэд байрших бүтээгдэхүүн бүрээс тоглоомын эрх үүснэ.​"),
                  ForImage(path: "assets/images/zaavar/placeholder.png"),
                  ForText(
                      text:
                          "3. Та Дэлгүүр хэсэг рүү орон өөрт тохирох эрхийн тоог сонгон худалдан авах боломжтой.​"),
                  ForImage(path: "assets/images/zaavar/placeholder.png"),
                  ForText(
                      text:
                          "4. Бүтээгдэхүүн цэсэд байрлах Брэнд болон бүтээгдэхүүний жагсаалтыг бүрэн үзэж тоглоомын эрхтэй болох боломжтой.​"),
                  ForImage(path: "assets/images/zaavar/placeholder.png"),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
