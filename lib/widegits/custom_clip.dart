import 'package:flutter/material.dart';
import 'package:login_ui_1a/model/clip_shadow.dart';
enum Edge { TOP, RIGHT, BOTTOM, LEFT }

class ParallelogramClipper extends CustomClipper<Path> {
  ParallelogramClipper(this.cutLength, this.edge);

  final double cutLength;
  final Edge edge;

  @override
  Path getClip(Size size) {
    switch (edge) {
      case Edge.TOP:
        return _getTopPath(size);
      case Edge.RIGHT:
        return _getRightPath(size);
      case Edge.BOTTOM:
        return _getBottomPath(size);
      case Edge.LEFT:
        return _getLeftPath(size);
      default:
        return _getRightPath(size);
    }
  }

  Path _getTopPath(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - cutLength);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, cutLength);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  Path _getRightPath(Size size) {
    var path = Path();
    path.moveTo(cutLength, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width - cutLength, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  Path _getBottomPath(Size size) {
    var path = Path();
    path.moveTo(0.0, cutLength);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - cutLength);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  Path _getLeftPath(Size size) {
    var path = Path();
    path.lineTo(size.width - cutLength, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(cutLength, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    ParallelogramClipper oldie = oldClipper as ParallelogramClipper;
    return cutLength != oldie.cutLength;
  }
}



class ClipShadowPainter extends CustomPainter {
  final CustomClipper<Path> clipper;
  final List<ClipShadow> clipShadows;

  ClipShadowPainter(this.clipper, this.clipShadows);

  @override
  void paint(Canvas canvas, Size size) {
    clipShadows.forEach((ClipShadow shadow) {
      canvas.drawShadow(
          clipper.getClip(size), shadow.color, shadow.elevation, true);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

