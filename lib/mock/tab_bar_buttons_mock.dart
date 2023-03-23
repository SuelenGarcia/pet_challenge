import 'package:flutter/material.dart';
import 'package:pet_challenge/models/tab_bar_buttons_model.dart';

class TabBarButtonsMock {
  static List<TabBarButtonsModel> tabBarButtons = [
    const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/filter_icon.PNG',
      text: null,
      isSelected: false,
    ),
    const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/dog_icon.png',
      text: 'Dogs',
      isSelected: true,
    ),
    const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/cat_icon.png',
      text: 'Cats',
      isSelected: false,
    ),
    const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/bird_icon.png',
      text: 'Birds',
      isSelected: false,
    ),
    const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/bird_icon.png',
      text: 'Birds',
      isSelected: false,
    ),
  ];
}
