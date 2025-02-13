import 'package:flutter/material.dart';
import 'package:task_app/model/on_boarding_class.dart';
import 'package:task_app/view/onboarding/on_boarding_bottom.dart';
import 'package:task_app/view/onboarding/on_boarding_center.dart';
import 'package:task_app/view/onboarding/on_boarding_top.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int index = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: controller,
              itemCount: OnBoarding.image.length,
              onPageChanged: (value) {
                setState(() {});
                index = value;
              },
              itemBuilder: (context, index) => SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OnBoardingTop(
                      index: index,
                    ),
                    OnBoardingCenter(
                      index: index,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: OnBoardingBottom(
              controller: controller,
              index: index,
            ),
          ),
        ],
      ),
    );
  }
}
