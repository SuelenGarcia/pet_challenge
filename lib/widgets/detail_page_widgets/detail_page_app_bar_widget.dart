import 'package:flutter/material.dart';

import '../home_page_widget.dart';

class AppBarWidget extends StatelessWidget{
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 100,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/images/icons_images/back_icon.PNG'),
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ));
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              top: 32,
              right: 28,
              bottom: 20,
            ),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 255, 230, 227),
            ),
            child: const Icon(
              Icons.favorite,
              size: 26,
              color: Color.fromARGB(255, 255, 95, 80),
            ),
          )
        ],
      );
  }


}