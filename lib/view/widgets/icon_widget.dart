import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icons, this.bgColor});
  final Icon icons;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: icons);
  }
}
