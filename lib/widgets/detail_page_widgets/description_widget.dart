import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final String petDescription;
  const DescriptionWidget({super.key, required this.petDescription});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 10),
            alignment: Alignment.bottomLeft,
            child: Text(
              'About',
            style: theme.headline3,
            textAlign: TextAlign.left,
            ),
          ),
          Text(
            petDescription,
            style: theme.headline5,
            textAlign: TextAlign.left,
            ),
        ],
      ),
    );
  }
}
