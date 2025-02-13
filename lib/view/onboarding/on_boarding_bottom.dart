import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_app/components/button/custom_button.dart';
import 'package:task_app/components/dialog/custom_dialog.dart';
import 'package:task_app/utils/images/images.dart';

class OnBoardingBottom extends StatelessWidget {
  const OnBoardingBottom(
      {super.key, required this.index, required this.controller});
  final int index;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              3,
              (indexz) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                  height: 14,
                  width: indexz == index ? 50 : 14,
                  decoration: BoxDecoration(
                    color:
                        indexz == index ? Color(0xff32C0B1) : Color(0xffCFCFCF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: index == 2
              ? customButton(
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff32C0B1),
                    fixedSize: Size(300, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    customDialog(
                      context: context,
                      builder: (context) => Dialog(
                        backgroundColor: Colors.white,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        insetPadding: EdgeInsets.all(0),
                        child: Lottie.asset(
                          CustomImages.lottieLogin,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started now',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              : customButton(
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff32C0B1),
                    fixedSize: Size(300, 65),
                    shape: CircleBorder(eccentricity: 0.0),
                  ),
                  onPressed: () {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
        ),
      ],
    );
  }
}
