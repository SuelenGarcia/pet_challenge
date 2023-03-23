import 'package:flutter/material.dart';
import 'package:pet_challenge/models/tab_bar_buttons_model.dart';
import 'package:pet_challenge/widgets/home_page_widgets/tab_bar_widgets/tab_bar_buttons_widget.dart';

class TabBarButtonsList extends StatelessWidget {
  final List<TabBarButtonsModel> tabBarWidget;

  const TabBarButtonsList({
    required this.tabBarWidget,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      //container da lista
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      height: 40,
      padding: const EdgeInsets.only(left: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: tabBarWidget.length,
          // uso a função separator para colocar um widget separador entre cada
          // widget, sem precisar ficar repetindo o mesmo código entre eles.
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 15,
            );
          },
          itemBuilder: (context, index) {
            return TabBarButtonsWidget(tabBarButtons: tabBarWidget[index]);
          }),
    );
  }
}
