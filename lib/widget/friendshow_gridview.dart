// import 'package:flutter/material.dart';

// class FriendGridView extends StatelessWidget {
//   const FriendGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 05,
//           mainAxisSpacing: 10,
//           mainAxisExtent: MediaQuery.of(context).size.height * 0.22),
//       shrinkWrap: true,
//       itemCount: 6,
//       itemBuilder: (context, index) => InkWell(
//         onTap: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => FriendProfile(
//                     image: data[0].friendsImages![index],
//                     userName: data[0].friendsNames![index]),
//               ));
//         },
//         child: Column(
//           children: [
//             Expanded(
//                 child: Container(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image:
//                           AssetImage(data[0].friendsImages![index].toString()),
//                       fit: BoxFit.fill),
//                   color: Colors.blue,
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10))),
//             )),
//             Container(
//                 height: MediaQuery.of(context).size.height * 0.05,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: const BorderRadius.only(
//                         bottomLeft: Radius.circular(10),
//                         bottomRight: Radius.circular(10))),
//                 child: Center(
//                     child: MyText(
//                   text: data[0].friendsNames![index].toString(),
//                   fWeight: FontWeight.bold,
//                 )))
//           ],
//         ),
//       ),
//     );
//   }
// }
