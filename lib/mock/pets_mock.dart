import 'package:pet_challenge/models/pet_model.dart';

class PetsMock {
  static List<PetModel> pets = [
    PetModel(
      imageNoBg: 'assets/images/dogs_images/golden/golden_bg.png',
      image: 'assets/images/home_images/golden_home.png',
      name: 'Sparky',
      breed: 'Golden Retriever',
      gender: 'Female, ',
      age: '8 months old',
      location: '2.5 kms away',
      description:
          'She is shy at first, but will warm up when she\'s comfortable. She is not a ranch dog that guards animals and property as she whould rather be with her people; but she is comfortable around animals. She plays well with other dogs.',
      isLiked: true,
      imagesList: [
        'assets/images/dogs_images/golden/golden_1.png',
        'assets/images/dogs_images/golden/golden_2.png',
        'assets/images/dogs_images/golden/golden_3.png',
        'assets/images/dogs_images/golden/golden_4.png',
        'assets/images/dogs_images/golden/golden_5.png'
      ],
    ),
    PetModel(
      imageNoBg: 'assets/images/dogs_images/golden/golden_bg.png',
      image: 'assets/images/home_images/pug_home.png',
      name: 'Charlie',
      breed: 'Pug',
      gender: 'Male, ',
      age: '1.5 years old',
      location: '2.6 kms away',
      description:
          'He is shy at first, but will warm up when he\'s comfortable. He is not a ranch dog that guards animals and property as he whould rather be with him people; but he is comfortable around animals. He plays well with other dogs.',
      isLiked: false,
      imagesList: [
        'assets/images/dogs_images/pug/pug_bg.png',
        'assets/images/dogs_images/pug/pug_1.png',
        'assets/images/dogs_images/pug/pug_2.png',
        'assets/images/dogs_images/pug/pug_3.png',
        'assets/images/dogs_images/pug/pug_4.png'
        'assets/images/dogs_images/pug/pug_5.png',
      ],
    ),
    PetModel(
      imageNoBg: 'assets/images/dogs_images/golden/golden_bg.png',
      image: 'assets/images/home_images/chihuahua_home.png',
      name: 'Max',
      breed: 'Chihuahua',
      gender: 'Male, ',
      age: '1 year old',
      location: '2.9 kms away',
      description:
          'He is shy at first, but will warm up when he\'s comfortable. He is not a ranch dog that guards animals and property as he whould rather be with him people; but he is comfortable around animals. He plays well with other dogs.',
      isLiked: false,
      imagesList: [],
    ),
    PetModel(
      imageNoBg: 'assets/images/dogs_images/golden/golden_bg.png',
      image: 'assets/images/home_images/spitz_home.png',
      name: 'Daisy',
      breed: 'Spitz',
      gender: 'Female, ',
      age: '7 months old',
      location: '3.1 kms away',
      description:
          'She is shy at first, but will warm up when she\'s comfortable. She is not a ranch dog that guards animals and property as she whould rather be with her people; but she is comfortable around animals. She plays well with other dogs.',
      isLiked: false,
      imagesList: [
        'assets/images/dogs_images/spitz/spitz_bg.png',
        'assets/images/dogs_images/spitz/spitz_1.jpg',
        'assets/images/dogs_images/spitz/spitz_2.png',
        'assets/images/dogs_images/spitz/spitz_3.png',
        'assets/images/dogs_images/spitz/spitz_4.png',
      ],
    ),
    PetModel(
      imageNoBg: 'assets/images/dogs_images/golden/golden_bg.png',
      image: 'assets/images/home_images/beagle_home.png',
      name: 'Zoe',
      breed: 'Beagle',
      gender: 'Female, ',
      age: '6 months old',
      location: '3.4 kms away',
      description:
          'She is shy at first, but will warm up when she\'s comfortable. She is not a ranch dog that guards animals and property as she whould rather be with her people; but she is comfortable around animals. She plays well with other dogs.',
      isLiked: false,
      imagesList: [],
    ),
  ];
}
