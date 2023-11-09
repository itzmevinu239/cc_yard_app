import 'package:cc_yard_app/view/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPages extends StatelessWidget {
  const CustomPages({super.key, required this.bgcolor});
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextWidget(
            text:
                "Kylie Jenner Built a Beauty Empire.\nNow She's Coming for Fashion",
            color: Colors.black,
            fontSize: 20.0.sp,
            weight: FontWeight.bold,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextWidget(
                text: "BAREFOOT AND WRAPPED in a robe in a hushed Paris hotel "
                    "suite, 26-year-old entrepreneur and reality star Kylie "
                    "Jenner is seated at her altar: a vanity. Her longtime hair"
                    " and makeup artists—who are also her confidantes—hover around "
                    "her like discreet, black-garbed hummingbirds, making imperceptible "
                    "tweaks to her long dark hair and flawless skin.",
                color: Colors.black,
                fontSize: 16.0.sp),
          ),
        ],
      ),
    );
  }
}
