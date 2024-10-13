import 'dart:ui'; // Thư viện cần thiết cho BackdropFilter
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerCustomPaint extends StatelessWidget {
  final double width;
  final double height; // Thêm chiều cao
  final Widget? child;

  const ContainerCustomPaint({
    super.key,
    required this.width,
    required this.height, // Nhận chiều cao từ bên ngoài
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: TrapezoidClipper(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Container(
              width: width,
              height: height.h, // Sử dụng chiều cao truyền vào
              color: Colors.transparent,
            ),
          ),
        ),
        ClipPath(
          clipper: TrapezoidClipper(),
          child: CustomPaint(
            size: Size(width, height.h), // Sử dụng width và height
            painter: TrapezoidPainter(),
          ),
        ),
        Positioned.fill(top: 60.0.h, child: child ?? Container()),
      ],
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TrapezoidPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      colors: [
        Colors.white.withOpacity(0.05), // Màu bắt đầu
        Colors.white.withOpacity(0.02), // Màu kết thúc
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final paint = Paint()
      ..shader =
          gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
