import 'package:flutter/material.dart';
import 'package:pet_challenge/models/pet_model.dart';
import 'package:pet_challenge/themes/custom_theme.dart';
import 'package:pet_challenge/pages/home_page.dart';

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
