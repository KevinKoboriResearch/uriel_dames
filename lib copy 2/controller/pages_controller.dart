import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:uriel_dames/views/home/home_zone_1.dart';
import 'package:uriel_dames/views/home/home_page.dart';
import 'package:uriel_dames/controller/menu.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class PagesController extends StatefulWidget {
  PagesController({Key? key}) : super(key: key);

  @override
  _PagesControllerState createState() => _PagesControllerState();
}

class _PagesControllerState extends State<PagesController>
    with SingleTickerProviderStateMixin {
  bool initBlur = false;
  AnimationController? _menuController;
  _openMenu() {
    setState(() {
      initBlur = !initBlur;
      initBlur ? _menuController!.forward() : _menuController!.reverse();
    });
  }

  @override
  void initState() {
    _menuController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    double pagePadding = deviceWidth / 16;
    // double menuFontSize = deviceWidth / 64;
    List<BlendMode> blendModes = [
      BlendMode.saturation,
      BlendMode.multiply,
      BlendMode.overlay,
      BlendMode.color,
      BlendMode.difference
    ];
    return Scaffold(
      backgroundColor: Color(0XFFececef),
      body: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              children: [
                HomePage(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  initBlur: initBlur,
                  pagePadding: pagePadding,
                ),
                 HomePage(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  initBlur: initBlur,
                  pagePadding: pagePadding,
                ),
              ],
            ),
            Menu(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              initBlur: initBlur,
              pagePadding: pagePadding,
            ),
            Padding(
              padding: EdgeInsets.all(pagePadding),
              child: IconButton(
                iconSize: 64,
                splashColor: Colors.greenAccent,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: _menuController!,
                  color: Colors.white,
                ),
                onPressed: () => _openMenu(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
