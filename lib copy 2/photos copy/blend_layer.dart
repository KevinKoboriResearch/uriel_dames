import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
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

import 'package:flutter_card_swipper/flutter_card_swiper.dart';


class BlendLayer extends StatefulWidget {
  BlendLayer({this.colorsIndex = 0, this.blendModesIndex = 0, this.colors, this.blendModes});
  final int colorsIndex;
  final int blendModesIndex;
  final List<BlendModel>? blendModes;
  final List<ColorsModel>? colors;
  @override
  _BlendLayerState createState() => _BlendLayerState();
}

class _BlendLayerState extends State<BlendLayer> {
  String currentColor = '';
  int currentColorIndex = 0;
  String currentBlend = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
          children:[ Container(
        foregroundDecoration: BoxDecoration(
          color: widget.colors![currentColorIndex].value,
          backgroundBlendMode: widget.blendModes![widget.blendModesIndex].value,
        ),
      ),
      
      
       Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      
                    currentColorIndex = 2;
                    });
                  },
                  child: Text('BLUE'),
                ),
                 InkWell(
                  onTap: () {
                    setState(() {
                      
                    currentColorIndex = 7;
                    });
                  },
                  child: Text('PINK'),
                ),
                Text(
                  currentColor,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  currentBlend,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
      ]
    );
  }
}
