import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class CoisasHafazerPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
        width: 56,
        height: 56,
        child: Stack(
          children: [
            SizedBox(
              width: 56,
              height: 56,
              child: Material(
                color: Color(0xff38e95f),
                shape: CircleBorder(),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Material(
                    color: Color(0x7f7f3a44),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Text(
        "Coisas Hafazer",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Roboto Mono",
          fontWeight: FontWeight.w700,
        ),
      ),
      Container(
        width: 287,
        height: 63,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 274,
                  height: 63,
                  child: Material(
                    color: Color(0xffbbbde9),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 25,
                  height: 24,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 24,
                        child: Material(
                          color: Color(0xffbbbde9),
                          shape: CircleBorder(),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 25,
                  height: 24,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 24,
                        child: Material(
                          color: Color(0xffbbbde9),
                          shape: CircleBorder(),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 265,
              top: 10,
              child: Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FlutterLogo(size: 19),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 287,
        height: 63,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 274,
                  height: 63,
                  child: Material(
                    color: Color(0xffbbbde9),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 25,
                  height: 24,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 24,
                        child: Material(
                          color: Color(0xffbbbde9),
                          shape: CircleBorder(),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 25,
                  height: 24,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 24,
                        child: Material(
                          color: Color(0xffbbbde9),
                          shape: CircleBorder(),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 265,
              top: 10,
              child: Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FlutterLogo(size: 19),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 287,
        height: 63,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 274,
                  height: 63,
                  child: Material(
                    color: Color(0xffbbbde9),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 25,
                  height: 24,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 24,
                        child: Material(
                          color: Color(0xffbbbde9),
                          shape: CircleBorder(),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 25,
                  height: 24,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 24,
                        child: Material(
                          color: Color(0xffbbbde9),
                          shape: CircleBorder(),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 265,
              top: 10,
              child: Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FlutterLogo(size: 19),
              ),
            ),
          ],
        ),
      ),
      Transform.rotate(
        angle: 3.14,
        child: Container(
          width: 30,
          height: 30,
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 18,
                    height: 30,
                    child: Material(
                      color: Color(0xffc4c4c4),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 128,
                child: SizedBox(
                  width: 30,
                  height: 32,
                  child: Material(
                    color: Color(0xffc4c4c4),
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Transform.rotate(
        angle: 3.14,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.rotate(
                angle: 3.14,
                child: SizedBox(
                  width: 15,
                  height: 12,
                  child: Material(
                    color: Color(0xffe8eaff),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(width: 60),
              SizedBox(
                width: 30,
                height: 32,
                child: Material(
                  color: Color(0xff3448f8),
                  shape: CircleBorder(),
                ),
              ),
              SizedBox(width: 60),
              SizedBox(
                width: 18,
                height: 30,
                child: Material(
                  color: Color(0xff3448f8),
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
