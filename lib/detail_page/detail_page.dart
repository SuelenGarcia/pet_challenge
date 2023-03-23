// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pet_challenge/detail_page/detail_page_widget.dart';

import 'package:pet_challenge/models/pet_model.dart';

class DetailPage extends StatelessWidget {
  final PetModel pet;

  const DetailPage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailPageWidget(pet);
  }
}
