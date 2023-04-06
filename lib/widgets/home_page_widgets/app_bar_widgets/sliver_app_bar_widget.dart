import 'package:flutter/material.dart';
import 'menu_icon_app_bar.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    final theme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context).size;
    final heightAppBar = mediaQuery.width * 0.272;
    final heightAvatar = mediaQuery.height * 0.133;
    final widthAvatar = mediaQuery.width * 0.133;

    return SliverAppBar(
      toolbarHeight: heightAppBar,
      leading: const Padding(
        padding: EdgeInsets.all(10),
        child: MenuIconAppBar(),
      ),
      title: Column(
        children: [
          Text(
            'Location',
            style: theme.headline6,
          ),
          Text(
            'Cameron St., Boston',
            style: theme.headline3,
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        Container(
          height: heightAvatar,
          width: widthAvatar,
          padding: const EdgeInsets.all(10),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/home_images/person.jpg'),
          ),
        ),
      ],
    );
  }
}
