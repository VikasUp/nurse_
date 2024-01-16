// import 'package:flutter/material.dart';
// import 'package:stock_management/presentation/management/screen/management_screen.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.green, 
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextButton(
//                 onPressed: () {
//                   print('Skip button pressed');
//                 },
//                 child: const Text(
//                   'Skip',
//                   style: TextStyle(
//                     color: Colors.black, 
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/Group 49318.png', 
//                 height: 150,
//                 width: 200, 
//               ),
//               Text(
//                 'Easily Scan\nand Pick',
//                 style: TextStyle(
//                   color: Colors.green[800], 
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.bold, 
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const Text(
//                 'Streamline your inventory control with Dose Portal,',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15.0,
//                 ),
//               ),
//               const Text(
//                 'the intuitive application designed to simplify warehouse',
//                 style: TextStyle(
//                   color: Colors.grey, 
//                   fontSize: 15.0,
//                 ),
//               ),
//               const Text(
//                 'management for nurses',
//                 style: TextStyle(
//                   color: Colors.grey, 
//                   fontSize: 15.0,
//                 ),
//               ),
//               Image.asset(
//                 'assets/images/Group 49319.png', 
//                 height: 250, 
//                 width: 350, 
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: ClipRRect(
//           borderRadius: BorderRadius.circular(30.0), 
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ManagementScreen()),
//             );
//             },
//             child: Text(
//               'Next',
//                style: TextStyle(
//                 color: Colors.black, 
//               ),
//             ), 
//             style: ElevatedButton.styleFrom(
//               primary: Colors.green,
//               elevation: 6.0, 
//             ),
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       ),
//     );
//   }
// }
