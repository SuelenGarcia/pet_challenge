// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pet_challenge/models/pet_model.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/detail_page_app_bar_widget.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/gallery_list_widget.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/info_pets_widget.dart';

class DetailPage extends StatelessWidget {
  final PetModel pet;

  const DetailPage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarWidget(),
            InfoPetsWidget(pet: pet),
            GalleryListWidget(imagesList: pet.imagesList),
          ],
        ),
      ),
    );
  }
}
