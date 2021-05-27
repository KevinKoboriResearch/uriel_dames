import 'package:flutter/material.dart';
import 'package:uriel_dames/utils/constants.dart';
import 'dart:ui';
import 'package:uriel_dames/widgets/player_card_clipper_path.dart';
import 'package:uriel_dames/widgets/square_clipper_path.dart';
import 'package:uriel_dames/widgets/clip_shadow_path.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';
  final String text2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/backgrounds/uriel_dames_3.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(96, 64, 96, 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 7),
              Image.asset(
                'assets/images/home_page_title.png',
                height: MediaQuery.of(context).size.height / 4,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 400,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                  ),
                ),
              ),
              Spacer(flex: 2),
              Row(
                children: [
                  Container(
                    height: 4,
                    width: 40,
                    color: Colors.yellow.withOpacity(0.8),
                  ),
                  SizedBox(width: 4),
                  Container(
                    height: 4,
                    width: 40,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                  SizedBox(width: 4),
                  Container(
                    height: 4,
                    width: 40,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 300),
            child: Row(
              children: [
                Spacer(flex: 11),
                Container(
                  height: 400,
                  width: 300,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: colorYellow,
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
                                  'BARCA TO FACE',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
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
                                  'SEVILLA AT THE',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  'COPA FINAL',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              text2,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                              ),
                            ),
                            // Spacer(),
                            SizedBox(height: 64),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_right_sharp,
                                  size: 32,
                                ),
                                Text(
                                  'FULL STORY',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
                ClipShadowPath(
                  clipper: SquareClipperPath(),
                  shadow: Shadow(
                    blurRadius: 24,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 96,
                    width: 96,
                    color: colorYellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined),
                        Spacer(),
                        Text(
                          'TEAM',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'ARCHIVE',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(flex: 1),
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
                Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
