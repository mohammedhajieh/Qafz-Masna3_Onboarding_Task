import 'package:flutter/material.dart';

Widget customButton({
  required Widget child,
  required ButtonStyle buttonStyle,
  required void Function() onPressed,
}) {
  return ElevatedButton(style: buttonStyle, onPressed: onPressed, child: child);
}
