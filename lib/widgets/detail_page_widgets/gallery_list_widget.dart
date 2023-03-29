import 'package:flutter/material.dart';
import 'gallery_widget.dart';

class GalleryListWidget extends StatelessWidget {
  final List<String> imagesList;

  const GalleryListWidget({
    Key? key,
    required this.imagesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return GalleryWidget(image: imagesList[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: imagesList.length,
      ),
    );
  }
}
