import 'package:flutter/material.dart';
import 'package:uriel_dames/utils/constants.dart';
import 'dart:ui';
import 'package:uriel_dames/widgets/player_card_clipper_path.dart';
import 'package:uriel_dames/widgets/square_clipper_path.dart';
import 'package:uriel_dames/widgets/clip_shadow_path.dart';

import 'package:delayed_display/delayed_display.dart';

class PhotosZone3 extends StatefulWidget {
  PhotosZone3(
      {this.deviceHeight, this.deviceWidth,  this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotosZone3State createState() => _PhotosZone3State();
}

class _PhotosZone3State extends State<PhotosZone3> {
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';
  final String text2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            height: widget.deviceHeight! / 2,
            width: widget.deviceWidth! / 2,
            foregroundDecoration: BoxDecoration(
              color: Colors.blue,
              backgroundBlendMode: BlendMode.overlay,
            ),
            // child: BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
            //   child: Container(
            //     color: Colors.black.withOpacity(0),
            //   ),
            // ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(widget.pagePadding!),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 7),
              DelayedDisplay(
                // slidingBeginOffset: Offset(0.15, 0.0),
                delay: Duration(milliseconds: 800),
                child: Container(
                  height: 100,
                  width: 400,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'CARIOCA SIM',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 400,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 300),
            child: Row(
              children: [
                Spacer(flex: 11),
                DelayedDisplay(
                  // slidingBeginOffset: Offset(0.15, 0.0),
                  delay: Duration(milliseconds: 800),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 6,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(32, 24, 32, 24),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'FORMADO EM',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'MARKETING',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'DIGITAL',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(flex: 4),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 128),
            child: Row(
              children: [
                Spacer(flex: 6),
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
                      padding: EdgeInsets.all(8),
                      height: 96,
                      width: 96,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '22 anos',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Rio de',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'Janeiro',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1),
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
                      height: 330,
                      width: 300,
                      child: Image.asset(
                        'assets/images/photos/1.jpg',
                        height: 160,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
