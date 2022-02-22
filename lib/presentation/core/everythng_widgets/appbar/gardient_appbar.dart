import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientAppbar extends StatelessWidget {
  const GradientAppbar({
    Key? key,
    this.height = 80,
  }) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.fromLTRB(20, 16, 10, 0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                context.router.pop();
              },
              child: const Icon(
                CupertinoIcons.chevron_back,
                color: Colors.black,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
