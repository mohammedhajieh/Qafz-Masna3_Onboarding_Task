import 'package:flutter/material.dart';
import 'package:task_app/model/on_boarding_class.dart';

class OnBoardingTop extends StatelessWidget {
  const OnBoardingTop({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        OnBoarding.image[index],
      ),
      fit: BoxFit.fill,
    );
  }
}
