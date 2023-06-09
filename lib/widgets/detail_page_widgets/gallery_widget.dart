// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {

  final String image;
  const GalleryWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10),),
        border: Border.all(
          color: const Color.fromARGB(255,238,238,238),
          width: 2,
          ),
        image: DecorationImage(image: AssetImage(image),
        ),
      ),
    );
  }
}
