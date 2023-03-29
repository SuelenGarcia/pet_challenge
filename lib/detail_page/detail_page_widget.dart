// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pet_challenge/detail_page/list_images_widget.dart';
import 'package:pet_challenge/widgets/home_page_widget.dart';
import '../models/pet_model.dart';

class DetailPageWidget extends StatefulWidget {
  final List<String> imagesList;
  final PetModel pet;

  const DetailPageWidget({
    Key? key,
    required this.imagesList,
    required this.pet,
  }) : super(key: key);

  @override
  State<DetailPageWidget> createState() => _DetailPageWidgetState();
}

class _DetailPageWidgetState extends State<DetailPageWidget> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/images/icons_images/back_icon.PNG'),
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ));
          },
        ),
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
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    widget.pet.name,
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
                    widget.pet.breed,
                    style: theme.bodyText2,
                  ),
                ),
                Text(
                  widget.pet.age,
                  style: theme.headline6,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/icons_images/gps_icon.png'),
                Text(
                  widget.pet.location,
                  style: theme.bodyText2,
                ),
              ],
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) {
                return GalleryWidget(image: imagesList);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}
