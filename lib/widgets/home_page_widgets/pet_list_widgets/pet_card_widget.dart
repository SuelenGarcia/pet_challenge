// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// import 'package:pet_challenge/models/pet_model.dart';

// class PetCardWidget extends StatelessWidget {
//   List<PetModel> pets = [];
//   PetCardWidget({
//     Key? key,
//     required this.pets,
//   }) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Image.asset(),
//         title: Column(
//           children: [
//             Text(petName),
//             Text(breed),
//             Row(children: [
//               Text(gender),
//               Text(age),
//             ]),
//             Row(
//               children: [
//                 Image.asset(imagePath),
//                 Text(location),
//               ],
//             ),
//           ],
//         ),
//         trailing: Image.asset(imagePath),
//       ),
//     );
//   }
// }
