import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class BurgerTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Container(
            height: 60,
            width: context.screenWidth,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.001,
                    0.9
                  ],
                  colors: [
                    Color(0xFFC15711),
                    Color(0xFFC15711),
                  ]),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFC15711),
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Padding(
            padding: const EdgeInsets.only(top:0.9),
            child: Container(
              child:Seeds(),
              height: 58,
              width: 312,
              decoration: BoxDecoration(
                color:Color(0xFFC15711),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.001,
                      0.9
                    ],
                    colors: [
                      Color(0xFFEC8945),
                      Color(0xFFC15711),

                    ]),
                boxShadow: [
                  BoxShadow(
                    color:  Color(0xFFC15711),
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        ),


      ],
    );
  }
}
class Seeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          VxEllipse(
            width: 25,
            height: 8,
            backgroundColor: Colors.white,
            shadows: [BoxShadow( color: Colors.grey.shade500,
              blurRadius: 0.7,
              offset: new Offset(0, 1.9),)],
          ).rotate(30.0),
          VxEllipse(
            width: 25,
            height: 8,
            backgroundColor: Colors.white,
            shadows: [BoxShadow( color: Colors.grey.shade400,
              blurRadius: 0.7,
              offset: new Offset(0, 2.3),)],
          ).rotate(60.0),
          VxEllipse(
            width: 25,
            height: 8,
            backgroundColor: Colors.white,
            shadows: [BoxShadow( color: Colors.grey.shade400,
                blurRadius: 0.7,
                offset: new Offset(0, 1.9),)],
          ).rotate(10.0),
          VxEllipse(
            width: 25,
            height: 8,
            backgroundColor: Colors.white,
            shadows: [BoxShadow( color: Colors.grey.shade400,
              blurRadius: 0.7,
              offset: new Offset(0, 1.9),)],
          ).rotate(46.0)
        ],
      ),
    );
  }
}
