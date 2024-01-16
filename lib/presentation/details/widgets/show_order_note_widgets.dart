// import 'package:flutter/material.dart';

// class OrderNoteDialog extends StatefulWidget {
//   const OrderNoteDialog({Key? key}) : super(key: key);

//   @override
//   State<OrderNoteDialog> createState() => _OrderNoteDialogState();
// }

// class _OrderNoteDialogState extends State<OrderNoteDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       child: const Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             'Order Summary',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Total Materials:'),
//               Text('5 materials'),
//             ],
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Total Quantity:'),
//               Text('100'),
//             ],
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Start Time:'),
//               Text('10:00 AM'),
//             ],
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('End Time:'),
//               Text('11:30 AM'),
//             ],
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Total Time Taken:'),
//               Text('1 hour 30 minutes'),
//             ],
//           ),
//           SizedBox(height: 16),
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Enter your order note...',
//             ),
//             maxLines: 3,
//           ),
//           SizedBox(height: 16),
//         ],
//       ),
//     );
//   }
// }
