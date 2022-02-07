import 'package:flutter/material.dart';

extension EverythngGlobalKey on GlobalKey {
  double get getGlobalYOffset {
    RenderBox box = currentContext!.findRenderObject() as RenderBox;
    double  dy = box.localToGlobal(Offset.zero).dy;
    return dy;
  }
}