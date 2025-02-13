import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

Widget customAnimateDo({
  required int index,
  required int delay,
  required Widget child,
}) {
  if (index == 1) {
    return FadeInUp(delay: Duration(milliseconds: delay), child: child);
  } else {
    return FadeInDown(delay: Duration(milliseconds: delay), child: child);
  }
}
