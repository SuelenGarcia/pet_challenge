import 'package:flutter/material.dart';
import 'package:pet_challenge/pages/detail_page.dart';
import 'package:pet_challenge/models/pet_model.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/heart_icon_widget.dart';

class PetCardWidget extends StatelessWidget {
  final PetModel pet;
  const PetCardWidget({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final heightCard = MediaQuery.of(context).size.height * 0.20;
    final imageSize = MediaQuery.of(context).size.width * 0.304;
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        width: double.infinity,
        height: heightCard,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 10,
            right: 10,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      child: Image.asset(
                        pet.image,
                        height: imageSize,
                        width: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    pet.name,
                    style: theme.headline2,
                  ),
                  Text(
                    pet.breed,
                    style: theme.bodyText2,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        pet.gender,
                        style: theme.headline6,
                      ),
                      Text(
                        pet.age,
                        style: theme.headline6,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/icons_images/gps_icon.png'),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        pet.location,
                        style: theme.caption,
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: HeartIconWidget(
                  isLiked: pet.isLiked,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return DetailPage(
              pet: pet,
            );
          },
        ));
      },
    );
  }
}
