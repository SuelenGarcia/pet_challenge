// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pet_challenge/models/pet_model.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/adopt_button_widget.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/description_widget.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/app_bar_widget.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/gallery_and_dog_image_widget.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const AppBarWidget(),
              InfoPetsWidget(pet: pet),
              const SizedBox(
                height: 10,
              ),
              GalleryAndDogImageWidget(
                imagesList: pet.imagesList,
                dogImage: pet.imageNoBg,
              ),
              DescriptionWidget(petDescription: pet.description),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AdoptButtonWidget(),
    );
  }
}
