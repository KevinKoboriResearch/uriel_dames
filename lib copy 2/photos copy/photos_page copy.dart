import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_card_swipper/widgets/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_card_swipper/widgets/transformer_page_view/index_controller.dart';
import 'package:flutter_card_swipper/widgets/transformer_page_view/parallax.dart';
import 'package:flutter_card_swipper/widgets/transformer_page_view/transformer_page_view.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:uriel_dames/views/photos/photos_zone_1.dart';
import 'package:uriel_dames/views/photos/photos_zone_2.dart';
import 'package:uriel_dames/views/photos/photos_zone_3.dart';
import 'package:uriel_dames/views/photos/photos_zone_4.dart';
import 'package:uriel_dames/controller/menu.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class PhotosPage extends StatefulWidget {
  PhotosPage(
      {this.deviceHeight, this.deviceWidth, this.pagePadding});
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
          child: 
          
         PageView(
            scrollDirection: Axis.vertical,
            children: [
              //  PhotosZone1(
              //   deviceHeight: widget.deviceHeight,
              //   deviceWidth: widget.deviceWidth,
              //   pagePadding: widget.pagePadding,
              // ),
              // PhotosZone2(
              //   deviceHeight: widget.deviceHeight,
              //   deviceWidth: widget.deviceWidth,
              //   pagePadding: widget.pagePadding,
              // ),
              PhotosZone3(
                deviceHeight: widget.deviceHeight,
                deviceWidth: widget.deviceWidth,
                pagePadding: widget.pagePadding,
              ),
               PhotosZone4(
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
