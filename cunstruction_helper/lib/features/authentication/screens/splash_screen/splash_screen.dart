// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/get_core.dart';


// class SplashScreen extends StatelessWidget {
//   SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(FadeInAnimationController());
//     FadeInAnimationController.find.startAnimation();
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           AppFadeAnimation(
//               durationInMs: 1600,
//               animatePosition:
//                   AnimatePosition(topAfter: appDefaultsize * 4, topBefore: -30),
//               child: AnimatedOpacity(
//                 duration: const Duration(milliseconds: 1600),
//                 opacity: controller.animate.value ? 1 : 0,
//                 child: Column(
//                   children: [
//                     Text(
//                       appName,
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     Text(
//                       splashScreenSubTitle1,
//                       style: Theme.of(context).textTheme.bodyLarge,
//                     ),
//                     Text(
//                       splashScreenSubTitle2,
//                       style: Theme.of(context).textTheme.bodyLarge,
//                     ),
//                   ],
//                 ),
//               )),
//           AppFadeAnimation(
//             durationInMs: 1600,
//             animatePosition: AnimatePosition(leftAfter: 0, leftBefore: 0),
//             child: AnimatedOpacity(
//               duration: const Duration(milliseconds: 1600),
//               opacity: controller.animate.value ? 1 : 0,
//               child: const Image(
//                 image: AssetImage(
//                   splashImg2,
//                 ),
//                 height: 400,
//               ),
//             ),
//           ),
//           AppFadeAnimation(
//               durationInMs: 1600,
//               animatePosition:
//                   AnimatePosition(bottunAfter: 20, bottunBefore: -30),
//               child: AnimatedOpacity(
//                 duration: const Duration(milliseconds: 1600),
//                 opacity: controller.animate.value ? 1 : 0,
//                 child: Text(
//                   developby,
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }
