import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class BurgerBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Stack(
        children: [
          Container(
            height: 40,
            width: context.screenWidth,
            decoration: BoxDecoration(
              color:Color(0xFFEC8945),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
//                  stops: [
//                    0.1,
//                    0.9
//                  ],
                  colors: [
                    Color(0xFFC15711),
                    Color(0xFFC15711),
                  ]),
              boxShadow: [
                BoxShadow(
                  color:Color(0xFFEC8945),
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text("Breadbottom"),
          ),
          Container(
            height: 40,
            width: 312,
            decoration: BoxDecoration(
              color:Color(0xFFEC8945),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
//                  stops: [
//                    0.1,
//                    0.9
//                  ],
                  colors: [
                    Color(0xFFEC8945),
                    Color(0xFFEC8945),
                  ]),
              boxShadow: [
                BoxShadow(
                  color:Color(0xFFEC8945),
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text("Breadbottom"),
          ),
        ],
      ),
    );
  }
}
