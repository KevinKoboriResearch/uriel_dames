import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PhotosZone1 extends StatefulWidget {
  PhotosZone1(
      {this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotosZone1State createState() => _PhotosZone1State();
}

class _PhotosZone1State extends State<PhotosZone1> {
  @override
  Widget build(BuildContext context) {
    // List<BlendMode> homeZones = [
    //   BlendMode.saturation,
    //   BlendMode.hue,
    //   BlendMode.multiply,
    //   BlendMode.overlay,
    //   BlendMode.color,
    //   BlendMode.difference
    // ];
    double titleWidth = widget.deviceWidth! / 48;
    return Center(
      child: Container(
        padding: EdgeInsets.all(widget.pagePadding!),
        child: DelayedDisplay(
          slidingBeginOffset: Offset(-0.15, 0.0),
          delay: Duration(milliseconds: 600),
          child: NeumorphicText(
            "Fotos",
            style: NeumorphicStyle(
              depth: 4,
              color: Colors.white,
            ),
            textStyle: NeumorphicTextStyle(
              fontFamily: 'Cinzel_Decorative',
              fontSize: 96 + titleWidth,
            ),
          ),
        ),
      ),
    );
  }
}
