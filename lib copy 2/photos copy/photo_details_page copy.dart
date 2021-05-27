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
import 'package:uriel_dames/views/photos/blend_layer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class PhotoDetailsPage extends StatefulWidget {
  PhotoDetailsPage(
      {this.imagePath, this.deviceHeight, this.deviceWidth, this.pagePadding});
  final String? imagePath;
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotoDetailsPageState createState() => _PhotoDetailsPageState();
}

class _PhotoDetailsPageState extends State<PhotoDetailsPage> {
  String currentColor = '';
  int currentColorIndex = 0;
  String currentBlend = '';
  List<BlendModel> blendModes = [
    BlendModel(name: 'saturation', value: BlendMode.saturation),
    BlendModel(name: 'difference', value: BlendMode.difference),
    BlendModel(name: 'hue', value: BlendMode.hue),
    BlendModel(name: 'colorBurn', value: BlendMode.colorBurn),
    BlendModel(name: 'colorDodge', value: BlendMode.colorDodge),
    BlendModel(name: 'darken', value: BlendMode.darken),
    BlendModel(name: 'multiply', value: BlendMode.multiply),
  ];
  // [
  //   BlendMode.saturation,
  //   // BlendMode.hue,
  //   BlendMode.difference,
  // ];
  List<ColorsModel> colors = [
    ColorsModel(name: 'white', value: Colors.white),
    ColorsModel(name: 'red', value: Colors.red),
    ColorsModel(name: 'blue', value: Colors.blue),
    ColorsModel(name: 'yellow', value: Colors.yellow),
    ColorsModel(name: 'green', value: Colors.green),
    ColorsModel(name: 'black', value: Colors.black),
    ColorsModel(name: 'purple', value: Colors.purple),
    ColorsModel(name: 'pink', value: Colors.pink),
    ColorsModel(name: 'grey', value: Colors.grey),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DelayedDisplay(
            slidingBeginOffset: Offset(0.0, 0.0),
            delay: Duration(milliseconds: 200),
            child: Image.asset(
              widget.imagePath!,
              height: widget.deviceHeight,
              width: widget.deviceWidth,
              fit: BoxFit.fitHeight,
            ),
          ),
          // Positioned.fill(
          //   child: Swiper(
          //     onIndexChanged: (index) {
          //       // setState(() {
          //       //   currentColor = colors[index].name!;
          //       // });
          //     },
          //     loop: false,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Swiper(
          //         onIndexChanged: (index2) {
          //           // setState(() {
          //           //   currentBlend = blendModes[index2].name!;
          //           // });
          //         },
          //         loop: false,
          //         scrollDirection: Axis.vertical,
          //         itemBuilder: (BuildContext context, int index2) {
          //           return BlendLayer(
          //             colorsIndex: currentColorIndex,
          //             blendModesIndex: index2,
          //             colors: colors,
          //             blendModes: blendModes,
          //           );
          //         },
          //         itemCount: blendModes.length,
          //       );
          //     },
          //     itemCount: colors.length,
          //   ),
          // ),
          // Positioned.fill(
          //   child: Swiper(
          //     onIndexChanged: (index) {
          //       setState(() {
          //         currentColor = colors[index].name!;
          //         currentColorIndex = index;
          //       });
          //     },
          //     loop: false,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //           // foregroundDecoration: BoxDecoration(
          //           //   color: colors[index].value,
          //           // ),
          //           );
          //     },
          //     itemCount: colors.length,
          //   ),
          // ),
          Positioned.fill(
            child: Swiper(
              // onIndexChanged: (index2) {
              //   setState(() {
              //     currentBlend = blendModes[index2].name!;
              //   });
              // },
              loop: false,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index2) {
                return Container(
                  foregroundDecoration: BoxDecoration(
                    color: colors[currentColorIndex].value,
                    backgroundBlendMode: blendModes[index2].value,
                  ),
                  // child: Align(
                  //   alignment: Alignment.bottomRight,
                  //   child: Text(
                  //     blendModes[index2].name!,//.toString(),
                  //     style: TextStyle(
                  //       fontSize: 32,
                  //     ),
                  //   ),
                  // ),
                );
              },
              itemCount: blendModes.length,
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
        ],
      ),
    );
  }
}
