import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:uriel_dames/views/home/home_zone_1.dart';
import 'package:uriel_dames/views/home/home_zone_2.dart';
import 'package:uriel_dames/controller/menu.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
    List<BlendMode> blendModes = [BlendMode.saturation, BlendMode.multiply, BlendMode.overlay, BlendMode.color, BlendMode.difference ];
    return Scaffold(
      backgroundColor: Color(0XFFececef),
      body: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Stack(
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // HomeZone1(
                //     deviceHeight: deviceHeight,
                //     deviceWidth: deviceWidth,
                //     initBlur: initBlur,
                //     pagePadding: pagePadding,),
                //  HomeZone1(deviceHeight:deviceHeight, deviceWidth: deviceWidth, initBlur: initBlur, pagePadding: pagePadding),
                HomeZone2(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  initBlur: initBlur,
                  pagePadding: pagePadding,
                ),
                SizedBox(
                  height: deviceHeight,
                  width: deviceWidth,
                  child: Image.asset(
                    'assets/images/backgrounds/uriel_dames_3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Container(
                //   height: deviceHeight,
                //   width: deviceWidth,
                //   // color: Color(0XFFe4e3de),
                //   child: Image.asset(
                //     'assets/images/backgrounds/uriel_dames_2.jpg',
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ],
            ),
            Menu(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              initBlur: initBlur,
              pagePadding: pagePadding,
            ),
            // Swiper(
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       height: deviceHeight/2,
            //       width: deviceWidth/2,
            //       foregroundDecoration: BoxDecoration(
            //         color: index == 1 ? Colors.white : Colors.deepPurpleAccent,
            //         backgroundBlendMode: BlendMode.lighten,//blendModes[index],
            //       ),
            //     );
            //   },
            //   loop: false,
            //   itemCount: blendModes.length,
            //   viewportFraction: 0.9,
            //   scale: 1,
            // ),
            // foregroundDecoration: BoxDecoration(
            //   color: Colors.white,
            //   backgroundBlendMode: BlendMode.saturation,
            // ),),
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

      // ],),
    );
  }
}
