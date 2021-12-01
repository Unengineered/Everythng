import 'package:everythng/presentation/core/animations/custom_page_transition_animations/scale_down_and_slide_animation.dart';
import 'package:everythng/presentation/core/animations/custom_page_transition_animations/slide_and_scale_up_transition.dart';
import 'package:flutter/material.dart';

Widget CustomTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideAndScaleUpTransition(
    parent: animation,
    child: ScaleDownAndSlideTransition(
      parent: secondaryAnimation,
      child: child,
    ),
  );
}

// class CustomPageRoute extends PageRouteBuilder {
//   final Widget enterPage;

//   CustomPageRoute({
//     required this.enterPage,
//   }) : super(
//           transitionDuration: const Duration(seconds: 1),
//           pageBuilder: (
//             context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               enterPage,
//           transitionsBuilder: (
//             context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) {
//             return SlideAndScaleUpTransition(
//               parent: animation,
//               child: ScaleDownAndSlideTransition(
//                 parent: secondaryAnimation,
//                 child: enterPage,
//               ),
//             );
//           },
//         );
// }

