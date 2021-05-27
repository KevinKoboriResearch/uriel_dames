import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:uriel_dames/views/home/home_zone_1.dart';
import 'package:uriel_dames/views/home/home_zone_2.dart';
import 'package:uriel_dames/views/home/home_zone_3.dart';
import 'package:uriel_dames/views/home/home_zone_4.dart';

class HomePage extends StatefulWidget {
  HomePage(
      {this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DelayedDisplay(
          slidingBeginOffset: Offset(0.0, 0.0),
          delay: Duration(milliseconds: 200),
          child: Image.asset(
            'assets/images/backgrounds/uriel_dames_3.jpg',
            height: widget.deviceHeight,
            width: widget.deviceWidth,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned.fill(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: [
               HomeZone1(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
              HomeZone2(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
              HomeZone3(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
               HomeZone4(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
