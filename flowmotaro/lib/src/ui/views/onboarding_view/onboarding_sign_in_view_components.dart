// import 'package:flutter/material.dart';

//   final List<String> howItWorksText = [
//     'Start a focus session.',
//     'Take a break whenever.',
//     'Earn taros to raise your companion.',
//     'Hit streaks for reward!',
//   ];
  
// Widget _buildLine() {
//   return Positioned.fill(
//     child: Align(
//       alignment: Alignment.centerLeft,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 45),
//         child: Container(
//           width: 2,
//           color: Colors.grey.shade300,
//         ),
//       ),
//     ),
//   );
// }

// Widget _buildSteps() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       for (int i = 0; i < howItWorksText.length; i++)
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 25.0),
//           child: Row(
//             children: [
//               const SizedBox(width: 30),

//               // static circle
//               Container(
//                 width: 35,
//                 height: 35,
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).primaryColor,
//                   shape: BoxShape.circle,
//                 ),
//               ),

//               const SizedBox(width: 20),

//               Expanded(
//                 child: Text(
//                   howItWorksText[i],
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//               ),
//             ],
//           ),
//         ),
//     ],
//   );
// }