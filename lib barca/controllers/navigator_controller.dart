import 'package:flutter/material.dart';
import 'package:uriel_dames/utils/constants.dart';
import 'package:uriel_dames/models/player_model.dart';

class NavigatorController extends StatefulWidget {
  final int pageIndex;
  final Player? player;
  NavigatorController({this.pageIndex = 0, this.player});
  @override
  _NavigatorControllerState createState() => _NavigatorControllerState();
}

class _NavigatorControllerState extends State<NavigatorController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(96, 64, 96, 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.menu,
                size: 32,
              ),
              SizedBox(width: 32),
              RichText(
                text: TextSpan(
                  text: 'FCB',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                  children: [
                    TextSpan(
                      text: 'ARCELONA',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 22,
                      ),
                    ),
                    if (widget.player != null)
                      TextSpan(
                        text: ' / ${widget.player!.surname.toUpperCase()}',
                        style: TextStyle(
                          color: colorYellow,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      )
                    else if (widget.pageIndex == 1)
                      TextSpan(
                        text: ' / PLAYERS',
                        style: TextStyle(
                          color: colorYellow,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      )
                    else
                      TextSpan(),
                  ],
                ),
              ),
              Spacer(flex: widget.player != null || widget.pageIndex == 1 ? 12 : 15),
              Text(
                'LATEST NEWS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Spacer(flex: 3),
              Text(
                'INTERVIEWS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Spacer(flex: 3),
              Text(
                'PHOTOS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Spacer(flex: 5),
              Image.asset(
                'assets/images/logos/barcelona_logo.png',
                width: 64,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NEWS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'FOOTBALL',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'team',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'TOUR & MUSEUM',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'TICKETS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'SHOP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
