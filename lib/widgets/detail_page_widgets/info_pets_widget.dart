import 'package:flutter/material.dart';
import '../../models/pet_model.dart';

class InfoPetsWidget extends StatelessWidget {
  final PetModel pet;
  const InfoPetsWidget({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    pet.name,
                    style: theme.bodyText1,
                  ),
                ),
                Image.asset(
                  'assets/images/icons_images/gender_icon.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    pet.breed,
                    style: theme.bodyText2,
                  ),
                ),
                Text(
                  pet.age,
                  style: theme.headline6,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/icons_images/gps_icon.png'),
                Text(
                  pet.location,
                  style: theme.bodyText2,
                ),
              ],
            ),
          ],
            ),
            );
  }
}