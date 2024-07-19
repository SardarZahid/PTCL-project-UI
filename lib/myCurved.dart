import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  final double notchDepth;

  MyClipper(this.notchDepth);

  @override
  Path getClip(Size size) {
    final path = Path();
    final halfWidth = size.width / 2;
    final notchWidth = notchDepth;  // Width of the notch
    final notchHeight = notchDepth; // Depth of the notch

    path.lineTo(halfWidth - notchWidth / 3, 0);
    path.lineTo(halfWidth, notchHeight/3,);
    path.lineTo(halfWidth + notchWidth / 3, 0);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
