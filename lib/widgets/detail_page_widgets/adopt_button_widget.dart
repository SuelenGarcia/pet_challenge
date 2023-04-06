import 'package:flutter/material.dart';

class AdoptButtonWidget extends StatelessWidget {
  const AdoptButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context).size;
    final widthScreen = mediaQuery.width;
    final heightButton = mediaQuery.height * 0.099;
    final widthButton = mediaQuery.width * 0.530;

    return SizedBox(
      width: widthScreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: heightButton,
            width: widthButton,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
              ),
              color: Color.fromARGB(255, 255, 95, 80),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.pets_sharp,
                  color: Colors.white,
                  size: 22,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'ADOPT',
                  style: theme.button,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
