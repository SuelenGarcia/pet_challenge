import 'package:flutter/cupertino.dart';
import 'package:pet_challenge/widgets/detail_page_widgets/dog_image_widget.dart';
import 'gallery_list_widget.dart';

class GalleryAndDogImageWidget extends StatelessWidget {
  final List<String> imagesList;
  final String dogImage;

  const GalleryAndDogImageWidget(
      {super.key, required this.imagesList, required this.dogImage});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightContainer = MediaQuery.of(context).size.height * 0.513;

    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: heightContainer,
      width: widthScreen,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GalleryListWidget(imagesList: imagesList),
          DogImageWidget(
            image: dogImage,
          ),
        ],
      ),
    );
  }
}
