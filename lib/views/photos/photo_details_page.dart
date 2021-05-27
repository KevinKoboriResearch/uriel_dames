import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:uriel_dames/providers/colors_list_provider.dart';
import 'package:uriel_dames/providers/blend_modes_list_provider.dart';

class PhotoDetailsPage extends StatefulWidget {
  PhotoDetailsPage({
    this.imagePath,
    this.deviceHeight,
    this.deviceWidth,
    this.pagePadding,
  });
  final String? imagePath;
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotoDetailsPageState createState() => _PhotoDetailsPageState();
}

class _PhotoDetailsPageState extends State<PhotoDetailsPage> {
  PageController colorController = PageController(initialPage: 0);
  PageController blendController = PageController(initialPage: 0);
  String currentColorName = 'white';
  int currentColorIndex = 0;
  String currentBlendName = 'saturation';
  int currentBlendIndex = 0;

  @override
  void dispose() {
    colorController.dispose();
    blendController.dispose();
    super.dispose();
  }

  onCurrentBlendIndex() {
    setState(() {
      blendController.animateToPage(
        currentBlendIndex,
        duration: Duration(milliseconds: 600),
        curve: Curves.decelerate,
      );
    });
  }

  String currentColor = '';

  String currentBlend = '';

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
          PageView(
            controller: blendController,
            scrollDirection: Axis.vertical,
            children: blendModesList.map((blendElement) {
              return Container(
                foregroundDecoration: BoxDecoration(
                  color: colorsList[currentColorIndex].value!,
                  backgroundBlendMode: blendElement.value,
                ),
              );
            }).toList(),
          ),
          Positioned(
            right: widget.pagePadding,
            top: widget.pagePadding,
            child: NeumorphicText(
              currentColorName + ' / ' + currentBlendName,
              style: NeumorphicStyle(
                depth: 4,
                color: Colors.red,
              ),
              textStyle: NeumorphicTextStyle(
                fontFamily: 'Cinzel_Decorative',
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            left: widget.pagePadding,
            bottom: widget.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: colorsList
                  .asMap()
                  .map(
                    (colorIndex, colorElement) => MapEntry(
                      colorIndex,
                      InkWell(
                        onTap: () {
                          setState(() {
                            currentColorIndex = colorIndex;
                            currentColorName = colorElement.name!;
                          });
                          onCurrentBlendIndex();
                        },
                        child: NeumorphicText(
                          colorElement.name!,
                          style: NeumorphicStyle(
                            depth: 4,
                            color: Colors.red,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontFamily: 'Cinzel_Decorative',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
            ),
          ),
          Positioned(
            right: widget.pagePadding,
            bottom: widget.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: blendModesList
                  .asMap()
                  .map(
                    (blenIndex, blendElement) => MapEntry(
                      blenIndex,
                      InkWell(
                        onTap: () {
                          setState(() {
                            currentBlendIndex = blenIndex;
                            currentBlendName = blendElement.name!;
                          });
                          onCurrentBlendIndex();
                        },
                        child: NeumorphicText(
                          blendElement.name!,
                          style: NeumorphicStyle(
                            depth: 4,
                            color: Colors.red,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontFamily: 'Cinzel_Decorative',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
