import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:delayed_display/delayed_display.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:uriel_dames/views/home/home_zone_1.dart';
import 'package:uriel_dames/views/home/home_zone_2.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Menu extends StatefulWidget {
  Menu({this.deviceHeight, this.deviceWidth, this.initBlur, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final bool? initBlur;
  final double? pagePadding;
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool onContactHover = false;

  @override
  Widget build(BuildContext context) {
    double menuFontSize = widget.deviceWidth! / 64;
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      // height: widget.deviceHeight,
      // width: widget.deviceWidth,
      height: widget.deviceHeight,
      width: widget.initBlur! ? widget.deviceWidth! / 2 : 0,
      child: ClipRRect(
        child: Container(
          // foregroundDecoration: BoxDecoration(
          //   color: Colors.white,
          //   backgroundBlendMode: BlendMode.saturation,
          // ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 24.0, sigmaY: 24.0),
            child: Container(
              color: Colors.black.withOpacity(0),
              child: widget.initBlur!
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DelayedDisplay(
                            delay: Duration(milliseconds: 200),
                            slidingBeginOffset: Offset(-0.0, -0.5),
                            child: NeumorphicText(
                              "sobre",
                              style: NeumorphicStyle(
                                depth: 4,
                                color: Colors.white,
                              ),
                              textStyle: NeumorphicTextStyle(
                                fontFamily: 'Cinzel_Decorative',
                                // fontWeight: FontWeight.w700,
                                fontSize: 32 + menuFontSize,
                                // AND others usual text style properties (fontFamily, fontWeight, ...)
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 400),
                            slidingBeginOffset: Offset(-0.0, -0.5),
                            child: NeumorphicText(
                              "fotos",
                              style: NeumorphicStyle(
                                depth: 4,
                                color: Colors.white,
                              ),
                              textStyle: NeumorphicTextStyle(
                                fontFamily: 'Cinzel_Decorative',
                                // fontWeight: FontWeight.w700,
                                fontSize: 32 + menuFontSize,
                                // AND others usual text style properties (fontFamily, fontWeight, ...)
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 500),
                            slidingBeginOffset: Offset(-0.0, -0.5),
                            child: InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  onContactHover = value;
                                });
                              },
                              child: NeumorphicText(
                                "contato",
                                style: NeumorphicStyle(
                                  depth: 4,
                                  color: onContactHover
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                textStyle: NeumorphicTextStyle(
                                  fontFamily: 'Cinzel_Decorative',
                                  // fontWeight: FontWeight.w700,
                                  fontSize: 32 + menuFontSize,
                                  // AND others usual text style properties (fontFamily, fontWeight, ...)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
//  ),
            ),
          ),
        ),
      ),
    );
  }
}
