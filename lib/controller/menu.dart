import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Menu extends StatefulWidget {
  Menu({
    required this.deviceHeight,
    required this.deviceWidth,
    required this.pagePadding,
    required this.changeWindow(i),
  });
  final double deviceHeight;
  final double deviceWidth;
  final double pagePadding;
  final void Function(int) changeWindow;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu>  with SingleTickerProviderStateMixin{
  AnimationController? menuController;
  bool initBlur = false;
  bool onHomeHover = false;
  bool onPhotosHover = false;
  bool onContactHover = false;

  @override
  void initState() {
    menuController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    super.initState();
  }

  @override
  void dispose() {
    menuController!.dispose();
    super.dispose();
  }

  openMenu() {
    setState(() {
      initBlur = !initBlur;
      initBlur ? menuController!.forward() : menuController!.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    double menuFontSize = widget.deviceWidth / 64;
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          height: widget.deviceHeight,
          width: initBlur ? widget.deviceWidth / 2 : 0,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 24.0, sigmaY: 24.0),
              child: Container(
                color: Colors.black.withOpacity(0),
                child: initBlur
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DelayedDisplay(
                              delay: Duration(milliseconds: 300),
                              slidingBeginOffset: Offset(-0.0, -0.5),
                              child: InkWell(
                                onTap: () {
                                  widget.changeWindow(0);
                                },
                                onHover: (value) {
                                  setState(() {
                                    onHomeHover = value;
                                  });
                                },
                                child: NeumorphicText(
                                  "início",
                                  style: NeumorphicStyle(
                                    depth: 4,
                                    color: onHomeHover
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: 'Cinzel_Decorative',
                                    fontSize: 32 + menuFontSize,
                                  ),
                                ),
                              ),
                            ),
                            DelayedDisplay(
                              delay: Duration(milliseconds: 400),
                              slidingBeginOffset: Offset(-0.0, -0.5),
                              child: InkWell(
                                onTap: () {
                                  widget.changeWindow(1);
                                },
                                onHover: (value) {
                                  setState(() {
                                    onPhotosHover = value;
                                  });
                                },
                                child: NeumorphicText(
                                  "fotos",
                                  style: NeumorphicStyle(
                                    depth: 4,
                                    color: onPhotosHover
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: 'Cinzel_Decorative',
                                    fontSize: 32 + menuFontSize,
                                  ),
                                ),
                              ),
                            ),
                            DelayedDisplay(
                              delay: Duration(milliseconds: 500),
                              slidingBeginOffset: Offset(-0.0, -0.5),
                              child: InkWell(
                                onTap: () {
                                  widget.changeWindow(2);
                                },
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
                                    fontSize: 32 + menuFontSize,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(widget.pagePadding),
          child: IconButton(
            iconSize: 64,
            splashColor: Colors.greenAccent,
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: menuController!,
              color: Colors.white,
            ),
            onPressed: () => openMenu(),
          ),
        ),
      ],
    );
  }
}
