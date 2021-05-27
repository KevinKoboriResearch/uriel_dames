import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeZone1 extends StatefulWidget {
  HomeZone1(
      {this.deviceHeight, this.deviceWidth, this.initBlur, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final bool? initBlur;
  final double? pagePadding;
  @override
  _HomeZone1State createState() => _HomeZone1State();
}

class _HomeZone1State extends State<HomeZone1> {
  @override
  Widget build(BuildContext context) {
    double titleWidth = widget.deviceWidth! / 48;
    return Container(     height: widget.deviceHeight! + 1,
              width: widget.deviceWidth! + 1,
      child: Stack(
        children: [
       AnimatedContainer(
              duration: Duration(milliseconds: 600),
              foregroundDecoration: widget.initBlur!
                  ? BoxDecoration(
                      color: Colors.white,
                      backgroundBlendMode: BlendMode.difference,
                    )
                  : null,
            child: Container(
              height: widget.deviceHeight,
              width: widget.deviceWidth,
              foregroundDecoration: BoxDecoration(
                color: Colors.grey,
                backgroundBlendMode: BlendMode.saturation,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0XFF5a7894),
                    Color(0XFF9bbad1),
                  ],
                ),
              ),
              // child: ImageFiltered(
              //   imageFilter: ImageFilter.blur(),
              child: DelayedDisplay(
                slidingBeginOffset: Offset(0.0, 0.0),
                delay: Duration(milliseconds: 200),
                child: Image.asset(
                  'assets/images/backgrounds/uriel_dames_1.png',
                  fit: BoxFit.fitHeight,
                  // ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(widget.pagePadding!),
            height: widget.deviceHeight,
            width: widget.deviceWidth,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 1),
                //     Neumorphic(
                //   style: NeumorphicStyle(
                //     shape: NeumorphicShape.concave,
                //     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                //     depth: -10,
                //     // lightSource: LightSource.topLeft,
                //     color: Colors.white,
                //   ),
                //   child: Container(
                //     height: 300,
                //     width: 300,
                //   ),
                // )
                Row(
                  children: [
                    Spacer(flex: 1),
                    DelayedDisplay(
                      slidingBeginOffset: Offset(0.15, 0.0),
                      delay: Duration(milliseconds: 400),
                      child: Text(
                        "Uriel",

                        // style: NeumorphicStyle(
                        //   shape: NeumorphicShape.concave,
                        //     // depth: -4,  //customize depth here
                        //     color: Color(0XFF9bbad1), //customize color here
                        // ),
                        style: TextStyle(
                          fontFamily: 'Cinzel_Decorative',
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 96 + titleWidth, //customize size here
                          // AND others usual text style properties (fontFamily, fontWeight, ...)
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
                      child: Text(
                        "Dames",

                        // style: NeumorphicStyle(
                        //   shape: NeumorphicShape.concave,
                        //     // depth: -4,  //customize depth here
                        //     color: Color(0XFF9bbad1), //customize color here
                        // ),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cinzel_Decorative',
                          // fontWeight: FontWeight.bold,
                          fontSize: 96 + titleWidth, //customize size here
                          // AND others usual text style properties (fontFamily, fontWeight, ...)
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
          Center(
            child: Container(
              //   foregroundDecoration: BoxDecoration(
              //   color: Colors.grey,
              //   backgroundBlendMode: BlendMode.saturation,
              // ),
              child: DelayedDisplay(
                slidingBeginOffset: Offset(0.0, 0.0),
                delay: Duration(milliseconds: 200),
                child: Image.asset(
                  'assets/images/backgrounds/uriel_dames_1.2.png',
                  height: widget.deviceHeight,
                  // width: widget.deviceWidth,
                  fit: BoxFit.fitHeight,
                  color: Colors.black.withOpacity(0.2),
                  // ),
                ),
              ),
            ),
          ),
          // Text(
          //   'Uriel Dames',
          //   style: TextStyle(
          //     fontSize: 64,
          //   color: Colors.white,
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.all(96),
          //   height: widget.deviceHeight,
          //   width: widget.deviceWidth,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [
          //       Container(
          //         height: 400,
          //         width: 300,
          //         decoration: BoxDecoration(
          //           border: Border.all(
          //             color: Colors.blue,
          //             width: 6,
          //           ),
          //         ),
          //         child: Column(
          //           children: [
          //             Text('Uriel'),
          //             Text('Uriel'),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
