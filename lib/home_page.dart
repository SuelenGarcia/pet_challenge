// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:pet_challenge/mock/pets_mock.dart';
import 'package:pet_challenge/mock/tab_bar_buttons_mock.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/pet_card_widget.dart';
import 'package:pet_challenge/widgets/home_page_widgets/tab_bar_widgets/tab_bar_list.dart';
import 'widgets/home_page_widgets/app_bar_widgets/menu_icon_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final tabBarButtons = TabBarButtonsMock.tabBarButtons;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        //width: 103,
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
      //fundo cinza arredondado
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 242, 242, 242),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TabBarButtonsList(tabBarWidget: tabBarButtons),
            Expanded(
              child: PetCardWidget(petList: PetsMock.pets),
            ),
          ],
        ),
      ),
    );
  }
}
