import 'package:flutter/material.dart';
import 'package:pet_challenge/mock/pets_mock.dart';
import 'package:pet_challenge/models/pet_model.dart';

class HeartIconWidget extends StatelessWidget {
  final bool isLiked;

  const HeartIconWidget({
    super.key,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            isLiked ? Icons.favorite : Icons.favorite_outline_sharp,
            size: 26,
            color: isLiked
                ? const Color.fromARGB(255, 255, 95, 80)
                : const Color.fromARGB(255, 186, 186, 186),
            // Comparação ? Valor se verdadeiro : Valor se falso;
          ),
        ]);
  }
}
