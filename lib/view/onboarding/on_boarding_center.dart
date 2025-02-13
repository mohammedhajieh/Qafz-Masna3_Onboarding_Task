import 'package:flutter/material.dart';
import 'package:task_app/components/animation/custom_animate.dart';
import 'package:task_app/model/on_boarding_class.dart';

class OnBoardingCenter extends StatelessWidget {
  const OnBoardingCenter({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 25.0),
      child: Column(
        spacing: 14,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customAnimateDo(
            index: index,
            delay: 300,
            child: Text(
              OnBoarding.subTitle[index],
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          customAnimateDo(
            index: index,
            delay: 500,
            child: Text(
              OnBoarding.descreption[index],
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
