import 'package:flutter/material.dart';

Future customDialog({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
}) {
  return showDialog(
    context: context,
    builder: builder,
  );
}
