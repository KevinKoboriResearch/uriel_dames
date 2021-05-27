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
import 'package:uriel_dames/views/home/home_zone_1.dart';
import 'package:uriel_dames/views/home/home_zone_2.dart';
import 'package:uriel_dames/controller/menu.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class HomePage extends StatefulWidget {
  HomePage(
      {this.deviceHeight, this.deviceWidth, this.initBlur, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final bool? initBlur;
  final double? pagePadding;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> homeZones = [
      HomeZone1(
        deviceHeight: widget.deviceHeight,
        deviceWidth: widget.deviceWidth,
        initBlur: widget.initBlur,
        pagePadding: widget.pagePadding,
      ),
      HomeZone2(
        deviceHeight: widget.deviceHeight,
        deviceWidth: widget.deviceWidth,
        initBlur: widget.initBlur,
        pagePadding: widget.pagePadding,
      ),
    ];
    return Stack(
      children: [
        DelayedDisplay(
          slidingBeginOffset: Offset(0.0, 0.0),
          delay: Duration(milliseconds: 200),
          child: Image.asset(
            'assets/images/backgrounds/uriel_dames_3.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned.fill(
          child: Swiper(
            loop: false,
            scrollDirection: Axis.vertical,
            // viewportFraction: 0.93,
            // scale: 1,
            itemCount: homeZones.length,
            itemBuilder: (BuildContext context, int index) {
              return homeZones[index];
            },
          ),
        ),
      ],
    );
  }
}
