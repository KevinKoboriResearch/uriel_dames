import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:uriel_dames/views/photos/photo_details_page.dart';
import 'package:uriel_dames/views/photos/photos_zone_1.dart';
import 'package:uriel_dames/views/photos/photos_zone_2.dart';
import 'package:uriel_dames/providers/photos_list.dart';

class PhotosPage extends StatefulWidget {
  PhotosPage({this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DelayedDisplay(
          slidingBeginOffset: Offset(0.0, 0.0),
          delay: Duration(milliseconds: 200),
          child: Image.asset(
            'assets/images/backgrounds/uriel_dames_2.jpg',
            height: widget.deviceHeight,
            width: widget.deviceWidth,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned.fill(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: [
              // PhotoDetailsPage(
              //   imagePath: photosList[2],
              //   deviceHeight: widget.deviceHeight,
              //   deviceWidth: widget.deviceWidth,
              //   pagePadding: widget.pagePadding,
              // ),
              PhotosZone1(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
              PhotosZone2(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
              // PhotosZone3(
              //   deviceHeight: widget.deviceHeight,
              //   deviceWidth: widget.deviceWidth,
              //   pagePadding: widget.pagePadding,
              // ),
              //  PhotosZone4(
              //   deviceHeight: widget.deviceHeight,
              //   deviceWidth: widget.deviceWidth,
              //   pagePadding: widget.pagePadding,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
