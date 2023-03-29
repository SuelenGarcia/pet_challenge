// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:pet_challenge/mock/pets_mock.dart';
import 'package:pet_challenge/mock/tab_bar_buttons_mock.dart';
import 'package:pet_challenge/widgets/home_page_widgets/app_bar_widgets/sliver_app_bar_widget.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/pet_card_widget.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/pet_list_widget.dart';
import 'package:pet_challenge/widgets/home_page_widgets/tab_bar_widgets/tab_bar_buttons_widget.dart';
import 'package:pet_challenge/widgets/home_page_widgets/tab_bar_widgets/tab_bar_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pets = PetsMock.pets;
  final tabBarButtons = TabBarButtonsMock.tabBarButtons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 242, 242, 242),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TabBarButtonsList(tabBarWidget: tabBarButtons),
            ),
          ),
          PetListWidget(petList: pets),
        ],
      ),
    );
  }
}
