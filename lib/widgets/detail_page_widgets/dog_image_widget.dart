import 'package:flutter/material.dart';

class DogImageWidget extends StatelessWidget {
  final String image;
  const DogImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final heightScreen = mediaQuery.height * 0.930;
    final widthScreen = mediaQuery.width * 0.750;

    return SizedBox(
      height: heightScreen,
      width: widthScreen,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            left: 80,
            child: Container(
              height: 315,
              width: 315,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 254, 228, 107),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 120,
            child: Image.asset(
              image,
              height: 315,
            ),
          ),
        ],
      ),
    );
  }
}
