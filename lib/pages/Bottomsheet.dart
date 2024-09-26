// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:oilgood_avaarai/ComponentsforShop/xButton.dart';

// class BottomSheet extends StatefulWidget {
//   const BottomSheet({super.key});

//   @override
//   _BottomsheetState createState() => _BottomsheetState();
// }

// class _BottomsheetState extends State<Bottomsheet> {
//   Future<dynamic> botttomSheet(
//       BuildContext context, double height, double width) {
//     return showModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (context) => Container(
//         height: height * 0.6,
//         width: width,
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Column(
//               children: [
//                 SizedBox(
//                   width: width,
//                   height: height * 0.1,
//                 ),
//                 SizedBox(
//                   height: height * 0.5,
//                   width: width,
//                   child: Column(
//                     children: [
//                       Container(
//                         height: height * 0.015,
//                         width: width,
//                         decoration: const BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color(0xff78A0CF),
//                               Color(0xff2351A1),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(
//                             top: height * 0.035,
//                             left: width * 0.05,
//                             right: width * 0.05,
//                             bottom: height * 0.03),
//                         height: height * 0.485,
//                         width: width,
//                         decoration: const BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color(0xffFBD050),
//                               Color(0xffFBAD50),
//                             ],
//                           ),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               height: height * 0.22,
//                               decoration: BoxDecoration(
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.3),
//                                     spreadRadius: 0,
//                                     blurRadius: 5.0,
//                                   )
//                                 ],
//                                 color: const Color(0xfffff1de),
//                                 borderRadius: BorderRadius.circular(31),
//                               ),
//                               child: GridView.builder(
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 padding: const EdgeInsets.only(
//                                     top: 25, right: 45, left: 45, bottom: 20),
//                                 gridDelegate:
//                                     const SliverGridDelegateWithFixedCrossAxisCount(
//                                   mainAxisSpacing: 10,
//                                   crossAxisSpacing: 30,
//                                   crossAxisCount: 3,
//                                   mainAxisExtent: 80,
//                                   childAspectRatio: 1 / 1,
//                                 ),
//                                 itemCount: 6,
//                                 itemBuilder: (BuildContext context, int index) {
//                                   return const Xbutton(
//                                     multiple: '1x',
//                                     price: '300₮',
//                                   );
//                                 },
//                               ),
//                             ),
//                             Container(
//                               height: height * 0.18,
//                               decoration: BoxDecoration(
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.3),
//                                     spreadRadius: 0,
//                                     blurRadius: 5.0,
//                                   )
//                                 ],
//                                 color: const Color(0xfffff1de),
//                                 borderRadius: BorderRadius.circular(31),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Positioned(
//               top: height * 0.051,
//               child: Container(
//                 decoration: const BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.white,
//                       spreadRadius: -6.0,
//                       blurRadius: 20.0,
//                     ),
//                   ],
//                 ),
//                 child: Stack(
//                   alignment: const Alignment(0, 0.7),
//                   children: [
//                     Image.asset(
//                       "assets/images/home/delguur.png",
//                       width: width * 0.25,
//                       height: width * 0.25,
//                     ),
//                     Text(
//                       "Дэлгүүр",
//                       style: GoogleFonts.comicNeue(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(
//               left: width * 0.03, right: width * 0.03, bottom: height * 0.04),
//           width: width,
//           height: height,
//           decoration: const BoxDecoration(
//               image: DecorationImage(
//             image: AssetImage("assets/images/home/homepage1.png"),
//             fit: BoxFit.fill,
//           )),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Your UI here...
//               ElevatedButton(
//                 onPressed: () => botttomSheet(context, height, width),
//                 child: Text("Show BottomSheet"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
