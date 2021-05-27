import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:uriel_dames/views/player_details/player_details_page.dart';
import 'package:uriel_dames/widgets/player_card_clipper_path.dart';
import 'package:uriel_dames/providers/players_provider.dart';

class PlayersListPageMobile extends StatefulWidget {
  @override
  _PlayersListPageMobileState createState() => _PlayersListPageMobileState();
}

class _PlayersListPageMobileState extends State<PlayersListPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgrounds/bg_1.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: playersList.map((e) {
              return Stack(
                children: [
                  Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      padding: EdgeInsets.fromLTRB(e.hover ? 38 : 0, 0, 0, 0),
                      height: e.hover ? 750 : 625,
                      width: e.hover ? 375 : 250,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: ClipPath(
                          clipper: PlayerCardClipperPath(),
                          child: Container(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                              child: Container(
                                color: Color(0XFF201d3d).withOpacity(0.2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      height: e.hover ? 750 : 625,
                      width: e.hover ? 405 : 250,
                      child: InkWell(
                        onDoubleTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PlayerDetailsPage(player: e),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: ClipPath(
                            clipper: PlayerCardClipperPath(),
                            child: Hero(
                              tag: e.id,
                              child: Image.asset(
                                e.image,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      padding: EdgeInsets.fromLTRB(e.hover ? 38 : 0, 0, 0, 0),
                      height: e.hover ? 750 : 625,
                      width: e.hover ? 375 : 250,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            e.hover = !e.hover;
                          });
                        },
                        onHover: (value) {
                          setState(() {
                            e.hover = value;
                          });
                        },
                        child: ClipPath(
                          clipper: PlayerCardClipperPath(),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 600),
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                            color: e.hover
                                ? Colors.transparent
                                : Color(0XFF201d3d).withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      padding: EdgeInsets.fromLTRB(16, 128, 16, 0),
                      height: e.hover ? 750 : 625,
                      width: e.hover ? 405 : 250,
                      child: InkWell(
                        onDoubleTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PlayerDetailsPage(player: e),
                            ),
                          );
                        },
                        onTap: () {
                          setState(() {
                            e.hover = !e.hover;
                          });
                        },
                        onHover: (value) {
                          setState(() {
                            e.hover = value;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              e.titleImage,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
