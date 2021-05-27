import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:uriel_dames/widgets/player_card_clipper_path.dart';
import 'package:uriel_dames/widgets/clip_shadow_path.dart';

class HomePageMobile extends StatefulWidget {
  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';
  final String text2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/backgrounds/bg_2.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(48, 32, 48, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 7),
              Image.asset(
                'assets/images/home_page_title.png',
                height: MediaQuery.of(context).size.height / 4,
              ),
              SizedBox(
                height: 16,
              ),
              Spacer(flex: 2),
              Container(
                height: 400,
                width: 300,
                child: Column(
                  children: [
                    ClipShadowPath(
                      clipper: PlayerCardClipperPath(),
                      shadow: Shadow(
                        blurRadius: 24,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: Container(
                        height: 330,
                        width: 300,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/players/messi_1.jpg',
                                  height: 160,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                                Center(
                                  child: SizedBox(
                                    height: 160,
                                    width: 300,
                                    child: Icon(
                                      Icons.play_circle_outline_sharp,
                                      size: 64,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.fromLTRB(32, 24, 32, 24),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'MESSI RETURNS',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          color: Colors.black,
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
                                        'TO BARCA PITCH',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_right_sharp,
                                        color: Colors.black,
                                        size: 32,
                                      ),
                                      Text(
                                        'FULL STORY',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.playlist_add_rounded,
                                        color: Colors.grey[400],
                                        size: 32,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
