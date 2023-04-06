import 'package:flutter/material.dart';
import '../../pages/home_page.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    final mediaQuery = MediaQuery.of(context).size;
    final heightAppBar = mediaQuery.width * 0.197;
    final heightContainer = mediaQuery.height * 0.130;
    final widthContainer = mediaQuery.width * 0.110;

    return AppBar(
      toolbarHeight: heightAppBar,
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
            top: 20,
            right: 24,
            bottom: 20,
          ),
          width: widthContainer,
          height: heightContainer,
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
