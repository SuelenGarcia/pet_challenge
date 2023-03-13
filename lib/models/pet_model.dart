// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PetModel {
  final String image;
  final String name;
  final String breed;
  final String gender;
  final String age;
  final String location;
  final String description;
  final bool isLiked;
  final List<String> imagesList;

  PetModel({
    required this.image,
    required this.name,
    required this.breed,
    required this.gender,
    required this.age,
    required this.location,
    required this.description,
    required this.isLiked,
    required this.imagesList,
  });
}
