// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pet_challenge/mock/pets_mock.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/pet_list_widget.dart';
import 'package:pet_challenge/widgets/home_page_widgets/tab_bar_widgets/tab_bar_buttons_widget.dart';
import 'widgets/home_page_widgets/app_bar_widgets/menu_icon_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
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
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            child: const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/home_images/person.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 242, 242, 242),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),
            //scaffold cinza
            ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10),
                //tab bar
                ),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const TabBarButtonsWidget(
                    imagePath: 'assets/images/icons_images/filter_icon.PNG',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TabBarButtonsWidget(
                    imagePath: 'assets/images/icons_images/dog_icon.png',
                    textStyle: theme.bodyText1,
                    text: 'Dogs',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TabBarButtonsWidget(
                    imagePath: 'assets/images/icons_images/cat_icon.png',
                    textStyle: theme.bodyText1,
                    text: 'Cats',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TabBarButtonsWidget(
                    imagePath: 'assets/images/icons_images/bird_icon.png',
                    textStyle: theme.bodyText1,
                    text: 'Birds',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: PetList(petList: PetsMock.pets),),
          ],
        ),
      ),
    );
  }
}
