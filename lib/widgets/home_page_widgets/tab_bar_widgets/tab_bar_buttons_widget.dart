// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';

class TabBarButtonsWidget extends StatelessWidget {
  final String imagePath;
  final String? text;
  final TextStyle? textStyle;
  final Color color;
  final double height;
  final double borderRadius;

  const TabBarButtonsWidget({
    Key? key,
    required this.imagePath,
    this.text,
    this.textStyle,
    this.color = Colors.white,
    this.height = 50,
    this.borderRadius = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget validText;
    late Widget sizedBox;

    if (text != null) {
      validText = Text(
        text!,
        style: textStyle,
      );
      sizedBox = const SizedBox(
        width: 11,
      );
    } else {
      validText = const SizedBox.shrink();
      sizedBox = const SizedBox.shrink();
    }
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 23,
          ),
          sizedBox,
          validText,
        ],
      ),
    );
  }
}
