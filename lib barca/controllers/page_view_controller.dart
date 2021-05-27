import 'package:flutter/material.dart';
import 'package:uriel_dames/controllers/navigator_controller.dart';
import 'package:uriel_dames/controllers/navigator_controller_mobile.dart';
import 'package:uriel_dames/views/home/home_page.dart';
import 'package:uriel_dames/views/home/home_page_mobile.dart';
import 'package:uriel_dames/views/players/players_list_page.dart';
import 'package:uriel_dames/models/player_model.dart';
import 'package:uriel_dames/providers/players_provider.dart';
import 'package:uriel_dames/views/players/players_list_page_mobile.dart';

class PageViewController extends StatefulWidget {
  @override
  _PageViewControllerState createState() => _PageViewControllerState();
}

class _PageViewControllerState extends State<PageViewController> {
  PageController pageController = PageController(initialPage: 0);
  int pageIndex = 0;
  List<Image> images = [];
  Player? player;
  Image? image;

  @override
  void initState() {
    super.initState();
    for (player in playersList) {
      images.add(Image.asset(player!.image));
      images.add(Image.asset(player!.titleImage));
    }
    images.add(Image.asset('assets/images/backgrounds/bg_2.jpg'));
    images.add(Image.asset('assets/images/backgrounds/bg_1.png'));
    images.add(Image.asset('assets/images/backgrounds/bg_4.jpg'));
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
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Stack(
            children: [
              PageView(
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                controller: pageController,
                scrollDirection: Axis.vertical,
                children: [
                  constraints.maxWidth < 788 ? HomePageMobile() : HomePage(),
                  constraints.maxWidth < 788
            ? PlayersListPageMobile() : PlayersListPage(),
                ],
              ),
              constraints.maxWidth < 900
                  ? NavigatorControllerMobile(pageIndex: pageIndex)
                  : NavigatorController(pageIndex: pageIndex),
            ],
          ),
        );
      },
    );
  }
}
