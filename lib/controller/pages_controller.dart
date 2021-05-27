import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:uriel_dames/views/home/home_page.dart';
import 'package:uriel_dames/views/photos/photos_page.dart';
import 'package:uriel_dames/controller/menu.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PagesController extends StatefulWidget {
  PagesController({Key? key}) : super(key: key);

  @override
  _PagesControllerState createState() => _PagesControllerState();
}

class _PagesControllerState extends State<PagesController> {
  PageController windowController = PageController(initialPage: 0);

  List<Image> images = [];
  // Player? player;
  Image? image;

  @override
  void initState() {
    super.initState();
    // for (player in playersList) {
    //   images.add(Image.asset(player!.image));
    //   images.add(Image.asset(player!.titleImage));
    // }
    images.add(Image.asset('assets/images/backgrounds/uriel_dames_3.jpg'));
    images.add(Image.asset('assets/images/backgrounds/uriel_dames_2.jpg'));
    // images.add(Image.asset('assets/images/backgrounds/uriel_dames_3.jpg'));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (image in images) {
      precacheImage(image!.image, context);
    }
  }

  @override
  void dispose() {
    windowController.dispose();
    super.dispose();
  }

  changeWindow(int i) {
    setState(() {
      windowController.animateToPage(
        i,
        duration: Duration(milliseconds: 1200),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    double pagePadding = deviceWidth / 16;

    return Scaffold(
      backgroundColor: Color(0XFFececef),
      body: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Stack(
          children: [
            PageView(
              controller: windowController,
              scrollDirection: Axis.horizontal,
              children: [
                HomePage(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  pagePadding: pagePadding,
                ),
                PhotosPage(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  pagePadding: pagePadding,
                ),
              ],
            ),
            Menu(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              pagePadding: pagePadding,
              changeWindow: (i) => changeWindow(i),
            ),
          ],
        ),
      ),
    );
  }
}
