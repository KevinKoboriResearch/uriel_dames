import 'package:flutter/material.dart';
import 'package:uriel_dames/utils/constants.dart';
import 'package:uriel_dames/models/player_model.dart';

class NavigatorControllerMobile extends StatefulWidget {
  final int pageIndex;
  final Player? player;
  NavigatorControllerMobile({this.pageIndex = 0, this.player});
  @override
  _NavigatorControllerMobileState createState() =>
      _NavigatorControllerMobileState();
}

class _NavigatorControllerMobileState extends State<NavigatorControllerMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(48, 32, 48, 32),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      ],
                    ),
                  ),
                  if (widget.player != null)
                    Text(
                      ' / ${widget.player!.surname.toUpperCase()}',
                      style: TextStyle(
                        color: colorYellow,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    )
                  else if (widget.pageIndex == 1)
                    Text(
                      ' / PLAYERS',
                      style: TextStyle(
                        color: colorYellow,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    )
                  else
                    Container(),
                ],
              ),
              Spacer(flex: 20),
              Image.asset(
                'assets/images/logos/barcelona_logo.png',
                width: 64,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
