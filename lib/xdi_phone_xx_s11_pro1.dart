import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';

class XDIPhoneXXS11Pro1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(-90.0, 0.0, -26.0, -1.0),
            child:
                // Adobe XD layer: 'content' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                  child:
                      // Adobe XD layer: 'bg' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'image' (shape)
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.9), BlendMode.dstIn),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 73.0),
                      ),
                      Pinned.fromPins(
                        Pin(size: 375.0, end: 26.0),
                        Pin(size: 356.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0x4e000000),
                                const Color(0x4e000000)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 375.0, end: 26.0),
                  Pin(start: 79.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'text' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 24.0, end: 35.0),
                        Pin(size: 82.0, middle: 0.5966),
                        child: Text(
                          'Welcome\nto Resinew',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 32,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 57.0, end: 58.0),
                        Pin(size: 44.0, middle: 0.7174),
                        child: Text(
                          'The best way to meet buyers for your stubble',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            letterSpacing: -0.12,
                            fontWeight: FontWeight.w500,
                            height: 1.6666666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 155.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff9599b3),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80.0),
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 84.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff241332),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 375.0, end: 26.0),
                  Pin(size: 104.0, end: 25.0),
                  child:
                      // Adobe XD layer: 'buttons' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 60.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'button' (group)
                            Stack(
                          children: <Widget>[
                            // Adobe XD layer: 'bg' (shape)
                            Container(
                              color: Colors.transparent,
                            ),
                            Align(
                              alignment: Alignment(0.003, 0.048),
                              child: SizedBox(
                                width: 60.0,
                                height: 18.0,
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    letterSpacing: 0.056,
                                    fontWeight: FontWeight.w600,
                                    height: 1.8571428571428572,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.003, -1.0),
                        child: SizedBox(
                          width: 56.0,
                          height: 18.0,
                          child:
                              // Adobe XD layer: 'button' (group)
                              Stack(
                            children: <Widget>[
                              SizedBox.expand(
                                  child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.056,
                                  fontWeight: FontWeight.w600,
                                  height: 1.8571428571428572,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )),
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
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 24.0, end: 0.0),
            child:
                // Adobe XD layer: 'bottom' (group)
                Stack(
              children: <Widget>[
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 44.0, start: 0.0),
            child:
                // Adobe XD layer: 'top' (group)
                Stack(
              children: <Widget>[
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ojpl3d =
    '<svg viewBox="0.0 0.0 375.0 44.0" ><path transform="translate(0.0, 44.0)" d="M 0 -44 L 375 -44 L 375 0 L 0 0 L 0 -44 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
