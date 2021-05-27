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
import 'package:flutter/material.dart';
import 'package:uriel_dames/utils/constants.dart';
import 'dart:ui';
import 'package:uriel_dames/widgets/player_card_clipper_path.dart';
import 'package:uriel_dames/widgets/square_clipper_path.dart';
import 'package:uriel_dames/widgets/clip_shadow_path.dart';

import 'package:delayed_display/delayed_display.dart';

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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(widget.pagePadding!),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                DelayedDisplay(
                  // slidingBeginOffset: Offset(0.15, 0.0),
                  delay: Duration(milliseconds: 400),
                  child: ClipShadowPath(
                    clipper: SquareClipperPath(),
                    shadow: Shadow(
                      blurRadius: 24,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 4,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/photos/2.jpg',
                        height: 330,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
