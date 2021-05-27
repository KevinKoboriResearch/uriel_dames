import "package:flutter/material.dart";

class SquareClipperPath extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
