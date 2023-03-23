import 'package:flutter/material.dart';
import 'package:pet_challenge/detail_page/detail_page.dart';
import 'package:pet_challenge/mock/pets_mock.dart';
import 'package:pet_challenge/models/pet_model.dart';
import 'package:pet_challenge/themes/custom_theme.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet App',
      theme: CustomTheme.theme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
