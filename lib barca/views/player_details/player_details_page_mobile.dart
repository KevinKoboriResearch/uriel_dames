import 'package:flutter/material.dart';
import 'package:uriel_dames/utils/constants.dart';
import 'dart:ui';
import 'package:uriel_dames/models/player_model.dart';
import 'package:uriel_dames/controllers/navigator_controller.dart';
import 'package:uriel_dames/controllers/navigator_controller_mobile.dart';

class PlayerDetailsPageMobile extends StatefulWidget {
  PlayerDetailsPageMobile({this.player});
  final Player? player;

  @override
  _PlayerDetailsPageMobileState createState() =>
      _PlayerDetailsPageMobileState();
}

class _PlayerDetailsPageMobileState extends State<PlayerDetailsPageMobile> {
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';
  final String text2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgrounds/bg_4.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Hero(
              tag: widget.player!.id,
              child: Image.asset(
                widget.player!.image,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Column(
            children: [
              Spacer(flex: 7),
              Image.asset(
                widget.player!.titleImage,
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
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colorYellow,
                          width: 6,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "${widget.player!.surname.toUpperCase()}'S 500TH",
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
                                'GOALS SHOWS',
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
                                'CRAZY SKILL',
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
            ],
          ),
          NavigatorControllerMobile(
            pageIndex: 0,
            player: widget.player,
          ),
        ],
      ),
    );
  }
}
