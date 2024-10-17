// import 'dart:ui'; // Để sử dụng ImageFilter
// import 'package:flutter/material.dart';

// class DtCustomCard extends StatelessWidget {
//   const DtCustomCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // Đặt Card ở giữa màn hình
//       child: Container(
//         width: 300,
//         height: 260,
//         padding: const EdgeInsets.fromLTRB(16, 40, 16, 24),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(16),
//             topRight: Radius.zero,
//             bottomRight: Radius.zero,
//             bottomLeft: Radius.zero,
//           ),
//           border: Border.all(
//             color: Colors.transparent, // Không màu cho border
//             width: 1,
//           ),
//           gradient: LinearGradient(
//             begin: const Alignment(-1, 0), // 270 độ
//             end: const Alignment(1, 0),
//             colors: [
//               const Color(0xFFDC349E)
//                   .withOpacity(0.1), // Màu rgba(220, 52, 158, 0.1)
//               const Color(0xFF31D0D0)
//                   .withOpacity(0.1), // Màu rgba(49, 208, 208, 0.1)
//             ],
//           ),
//         ),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(16),
//             topRight: Radius.zero,
//             bottomRight: Radius.zero,
//             bottomLeft: Radius.zero,
//           ),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100), // Hiệu ứng blur
//             child: Container(
//               width: double.infinity,
//               height: double.infinity,
//               color: Colors.transparent, // Đặt độ mờ là 0
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
