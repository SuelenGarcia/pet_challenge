import 'package:flutter/material.dart';
import '../../../models/pet_model.dart';

class PetList extends StatelessWidget {
  final List<PetModel> petList;

  const PetList({required this.petList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: petList.length,
        itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.all(10),
                elevation: 0,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(5),
                leading: Image.asset(petList[index].image),
        title: Column(
          children: [
            Text(petList[index].name),
            Text(petList[index].breed),
            Row(children: [
              Text(petList[index].gender),
              Text(petList[index].age),
            ]),
            Row(
              children: [
                Image.asset('assets/images/icons_images/gps_icon.png'),
                Text(petList[index].location),
              ],
            ),
          ],
        ),
        trailing: Image.asset('assets/images/icons_images/favorite_icon.png'),
                ),
              );
        }
          );
        }
  }

