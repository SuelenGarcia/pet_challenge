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
    final mediaQuery = MediaQuery.of(context).size;
    final heightList = mediaQuery.height * 0.8;
    final widthList = mediaQuery.width * 0.186;

    return Stack(
      children: [
        SizedBox(
          height: heightList,
          width: widthList,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return GalleryWidget(image: imagesList[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: imagesList.length,
          ),
        ),
        IgnorePointer(
          child: Container(
            height: heightList,
            width: widthList,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.white.withOpacity(0.1),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        )
      ],
    );
  }
}
