import 'package:flutter/material.dart';
import 'package:pet_challenge/models/pet_model.dart';
import 'package:pet_challenge/widgets/home_page_widgets/pet_list_widgets/heart_icon_widget.dart';

class PetCardWidget extends StatelessWidget {
  final List<PetModel> petList;

  const PetCardWidget({
    Key? key,
    required this.petList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return ListView.separated(
      itemCount: petList.length,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 20,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        final pet = petList[index];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 9,
              bottom: 10,
              left: 9,
              right: 11,
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
                          height: 110,
                          width: 110,
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
                    isLiked: petList[index].isLiked,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
