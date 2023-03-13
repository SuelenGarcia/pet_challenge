import 'package:flutter/material.dart';
import 'package:pet_challenge/models/tab_bar_buttons_model.dart';

class PetButtonsMock {
  static List<TabBarButtonsModel> tabBar = [
    const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/filter_icon.PNG',
      text: null,
      color: Colors.white,
      ),
      const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/dog_icon.png',
      text: 'Dogs',
      color: Color.fromARGB(255,255,95,80),
      ),
      const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/cat_icon.png',
      text: 'Cats',
      color: Colors.white,
      ),
      const TabBarButtonsModel(
      imagePath: 'assets/images/icons_images/bird_icon.png',
      text: 'Birds',
      color: Colors.white,
      ),
    ];
}


