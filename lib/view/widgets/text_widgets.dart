import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? weight;

  // ignore: use_key_in_widget_constructors
  const CustomTextWidget(
      {required this.text,
      required this.color,
      required this.fontSize,
      this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontSize, fontWeight: weight),
    );
  }
}
