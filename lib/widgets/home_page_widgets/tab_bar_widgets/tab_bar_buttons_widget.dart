// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:pet_challenge/models/tab_bar_buttons_model.dart';

class TabBarButtonsWidget extends StatelessWidget {
  final TabBarButtonsModel tabBarButtons;
  const TabBarButtonsWidget({
    required this.tabBarButtons,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    String? text = tabBarButtons.text;
    final theme = Theme.of(context).textTheme;
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: tabBarButtons.isSelected == true ? const Color.fromARGB(255, 255, 95, 80)
        : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      //container individual
      child: Row(
        mainAxisSize: MainAxisSize.min,
        //Minimiza a quantidade de espaço livre ao longo do eixo principal,
        //sujeito às restrições de layout de entrada.
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            tabBarButtons.imagePath,
            height: 23,
          ),
          if (text != null) ...{
            //adição do "..." para conseguir passar minha lista de widgets
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: tabBarButtons.isSelected == true ? Colors.white
        : const Color.fromARGB(255,68,72,76),
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
          }
        ],
      ),
    );
  }
}
