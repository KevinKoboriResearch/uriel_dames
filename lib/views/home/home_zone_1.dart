import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeZone1 extends StatefulWidget {
  HomeZone1(
      {this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _HomeZone1State createState() => _HomeZone1State();
}

class _HomeZone1State extends State<HomeZone1> {
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
    return 
        Container(
          padding: EdgeInsets.all(widget.pagePadding!),
          child: Column(
            children: [
              Spacer(flex: 1),
              Row(
                children: [
                  Spacer(flex: 1),
                  DelayedDisplay(
                    slidingBeginOffset: Offset(0.15, 0.0),
                    delay: Duration(milliseconds: 400),
                    child: NeumorphicText(
                      "Uriel",
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
                  Spacer(flex: 2),
                ],
              ),
              Row(
                children: [
                  Spacer(flex: 3),
                  DelayedDisplay(
                    slidingBeginOffset: Offset(-0.15, 0.0),
                    delay: Duration(milliseconds: 600),
                    child: NeumorphicText(
                      "Dames",
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
                  Spacer(flex: 1),
                ],
              ),
              Spacer(flex: 2),
            ],
          ),
     
    );
  }
}
