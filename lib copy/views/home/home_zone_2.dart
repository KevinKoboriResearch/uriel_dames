import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_card_swipper/widgets/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_card_swipper/widgets/transformer_page_view/index_controller.dart';
import 'package:flutter_card_swipper/widgets/transformer_page_view/parallax.dart';
import 'package:flutter_card_swipper/widgets/transformer_page_view/transformer_page_view.dart';

class HomeZone2 extends StatefulWidget {
  HomeZone2(
      {this.deviceHeight, this.deviceWidth, this.initBlur, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final bool? initBlur;
  final double? pagePadding;
  @override
  _HomeZone2State createState() => _HomeZone2State();
}

class _HomeZone2State extends State<HomeZone2> {
  @override
  Widget build(BuildContext context) {
    List<BlendMode> blendModes = [
      BlendMode.saturation,
      BlendMode.hue,
      BlendMode.multiply,
      BlendMode.overlay,
      BlendMode.color,
      BlendMode.difference
    ];

    double titleWidth = widget.deviceWidth! / 48;
    return Stack(
      children: [
        Container(
          height: widget.deviceHeight,
          width: widget.deviceWidth,
          // foregroundDecoration: widget.initBlur!
          //     ? BoxDecoration(
          //         color: Colors.grey,
          //         backgroundBlendMode: BlendMode.saturation,
          //       )
          //     : null,

          // foregroundDecoration: widget.initBlur!
          //     ? BoxDecoration(
          //         color: Colors.white,
          //         backgroundBlendMode: BlendMode.difference,
          //       )
          //     : BoxDecoration(
          //         color: Colors.grey,
          //         backgroundBlendMode: BlendMode.saturation,
          //       ),
          // decoration: BoxDecoration(
          //   color:Colors.black,
          // ),
          // child: ImageFiltered(
          //   imageFilter: ImageFilter.blur(),
          child: DelayedDisplay(
            slidingBeginOffset: Offset(0.0, 0.0),
            delay: Duration(milliseconds: 200),
            child: Image.asset(
              'assets/images/backgrounds/uriel_dames_3.jpg',
              fit: BoxFit.fitHeight,
              // ),
            ),
          ),
        ),
        Positioned.fill(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: widget.deviceHeight! / 2,
                width: widget.deviceWidth! / 2,
                foregroundDecoration: index == 0
                    ? null
                    : BoxDecoration(
                        color: Colors.green,
                        backgroundBlendMode: blendModes[index],
                      ),
              );
            },
            scrollDirection: Axis.vertical,
            loop: false,
            itemCount: blendModes.length,
            viewportFraction: 0.93,
            scale: 1,
          ),
        ),
// ,
        // PageView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     // Container(
        //     //   height: widget.deviceHeight,
        //     //   width: widget.deviceWidth,
        //     //   foregroundDecoration: BoxDecoration(
        //     //     color: Colors.white,
        //     //     backgroundBlendMode: BlendMode.saturation,
        //     //   ),
        //     // ),
        //     // Container(
        //     //   height: widget.deviceHeight,
        //     //   width: widget.deviceWidth,
        //     //   foregroundDecoration: BoxDecoration(
        //     //     color: Colors.white,
        //     //     backgroundBlendMode: BlendMode.exclusion,
        //     //   ),
        //     // ),
        //     // Container(
        //     //   height: widget.deviceHeight,
        //     //   width: widget.deviceWidth,
        //     //   foregroundDecoration: BoxDecoration(
        //     //     color: Colors.white,
        //     //     backgroundBlendMode: BlendMode.difference,
        //     //   ),
        //     // ),
        //   ],
        // ),

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
                    child: NeumorphicText(
                      "Uriel",
                      style: NeumorphicStyle(
                        depth: 4, //customize depth here
                        color: Colors.white, //customize color here
                      ),
                      textStyle: NeumorphicTextStyle(
                        fontFamily: 'Cinzel_Decorative',
                        fontSize: 96 + titleWidth, //customize size here
                        // AND others usual text style properties (fontFamily, fontWeight, ...)
                      ),
                    ),
                    // Text(
                    //   "Uriel",

                    //   // style: NeumorphicStyle(
                    //   //   shape: NeumorphicShape.concave,
                    //   //     // depth: -4,  //customize depth here
                    //   //     color: Color(0XFF9bbad1), //customize color here
                    //   // ),
                    //   style: TextStyle(
                    //     fontFamily: 'Cinzel_Decorative',
                    //     color: Colors.white,
                    //     // fontWeight: FontWeight.bold,
                    //     fontSize: 96 + titleWidth, //customize size here
                    //     // AND others usual text style properties (fontFamily, fontWeight, ...)
                    //   ),
                    // ),
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
                        depth: 4, //customize depth here
                        color: Colors.white, //customize color here
                      ),
                      textStyle: NeumorphicTextStyle(
                        fontFamily: 'Cinzel_Decorative',
                        fontSize: 96 + titleWidth, //customize size here
                        // AND others usual text style properties (fontFamily, fontWeight, ...)
                      ),
                    ),

                    // Text(
                    //   "Dames",

                    //   // style: NeumorphicStyle(
                    //   //   shape: NeumorphicShape.concave,
                    //   //     // depth: -4,  //customize depth here
                    //   //     color: Color(0XFF9bbad1), //customize color here
                    //   // ),
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontFamily: 'Cinzel_Decorative',
                    //     // fontWeight: FontWeight.bold,
                    //     fontSize: 96 + titleWidth, //customize size here
                    //     // AND others usual text style properties (fontFamily, fontWeight, ...)
                    //   ),
                    // ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
        // Center(
        //   child: Container(
        //     //   foregroundDecoration: BoxDecoration(
        //     //   color: Colors.grey,
        //     //   backgroundBlendMode: BlendMode.saturation,
        //     // ),
        //     child: DelayedDisplay(
        //       slidingBeginOffset: Offset(0.0, 0.0),
        //       delay: Duration(milliseconds: 200),
        //       child: Image.asset(
        //         'assets/images/backgrounds/uriel_dames_1.2.png',
        //         height: widget.deviceHeight,
        //         // width: widget.deviceWidth,
        //         fit: BoxFit.fitHeight,
        //         color: Colors.black.withOpacity(0.2),
        //         // ),
        //       ),
        //     ),
        //   ),
        // ),
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
    );
  }
}
