import 'package:flutter/material.dart';
import '../models/pet_model.dart';

class DetailPageWidget extends StatelessWidget {
  
  const DetailPageWidget(this.pet, {super.key});
final PetModel pet;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        leading: Image.asset('assets/images/icons_images/back_icon.PNG'),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              top: 32,
              right: 28,
              bottom: 20,
            ),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 255, 230, 227),
            ),
            child: const Icon(
              Icons.favorite,
              size: 26,
              color: Color.fromARGB(255, 255, 95, 80),
            ),
          )
        ],
      ),
      body: Column(
        children: [
        Row(
          children: [
            Expanded(
              child: Text(pet.name,
              style: theme.bodyText1,),
            ),
            Image.asset('assets/images/icons_images/gender_icon.png'),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(pet.breed,
              style: theme.bodyText2,),
            ),
            Text(pet.age,
            style: theme.headline6,),
          ],
        ),
      ]),
    );
  }
}