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
      width: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10),),
        border: Border.all(color: Colors.black),
        image: DecorationImage(image: AssetImage(image),),
      ),
    );
  }
}
