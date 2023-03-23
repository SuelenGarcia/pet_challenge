// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TabBarButtonsModel {
  final String imagePath;
  final String? text;
  final bool isSelected;

  const TabBarButtonsModel({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.isSelected,
  });
}
