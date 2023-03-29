import 'package:flutter/material.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/pet_card_widget.dart';

import '../../../models/pet_model.dart';

class PetListWidget extends StatelessWidget {
  final List<PetModel> petList;

  const PetListWidget({
    required this.petList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: petList.length,
            (context, index) {
      return Container(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: PetCardWidget(pet: petList[index]));
    }),
        );
  }
}
