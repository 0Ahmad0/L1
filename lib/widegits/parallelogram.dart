import 'package:flutter/material.dart';
import 'package:login_ui_1a/model/clip_shadow.dart';

import 'custom_clip.dart';

class Parallelogram extends StatelessWidget {

  final Widget child;
  final double cutLength;
  final Edge edge;

  final List<ClipShadow> clipShadows;

  const Parallelogram({Key key, this.cutLength, this.edge, this.clipShadows, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var clipper = ParallelogramClipper(cutLength, edge);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
