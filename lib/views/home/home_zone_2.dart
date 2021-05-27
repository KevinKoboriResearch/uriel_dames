import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class HomeZone2 extends StatefulWidget {
  HomeZone2(
      {this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _HomeZone2State createState() => _HomeZone2State();
}

class _HomeZone2State extends State<HomeZone2> {
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
              color: Colors.white,
              backgroundBlendMode: BlendMode.saturation,
            ),
            // child: BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
            //   child: Container(
            //     color: Colors.black.withOpacity(0),
            //   ),
            // ),
          ),
        ),
        Center(
          child: DelayedDisplay(
            // slidingBeginOffset: Offset(0.15, 0.0),
            delay: Duration(milliseconds: 800),
            child: Container(
              padding: EdgeInsets.all(32),
              // padding: EdgeInsets.all(widget.pagePadding!),
              height: widget.deviceWidth! / 2.37,
              width: widget.deviceWidth! / 2,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 6,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.6),
                    padding: EdgeInsets.fromLTRB(32,0,32,0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'MODELO',
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                 Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white.withOpacity(0.6),
                    padding: EdgeInsets.fromLTRB(32,0,32,0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'ATOR',
                        style: TextStyle(
                          // color:Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),    SizedBox(height: 32),
                 Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white.withOpacity(0.6),
                    padding: EdgeInsets.fromLTRB(32,0,32,0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'PERFORMER',
                        style: TextStyle(
                          // color:Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
