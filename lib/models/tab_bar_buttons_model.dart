import 'package:flutter/material.dart';

class TabBarButtonsModel {
  final String imagePath;
  final String? text;
  final Color color;

    const TabBarButtonsModel({
    Key? key,
    required this.imagePath,
    this.text,
    this.color = Colors.white,
  });

}
