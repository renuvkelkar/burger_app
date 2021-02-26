
import 'package:burgerapp/model/shopping_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShoppingItemWidget extends StatelessWidget {
  final ShoppingItem item;
  final Animation animation;
  final VoidCallback onClicked;

  const ShoppingItemWidget({
    @required this.item,
    @required this.animation,
    @required this.onClicked,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizeTransition(
    axis: Axis.vertical,
    sizeFactor: animation,

        child: Stack(
          children: [
            VxCapsule(
              width: item.inWidth,
              height: item.inHeight,
              backgroundColor: Color(item.inColor),
            ).p4(),
InkWell(
    onTap: onClicked,
    child: Icon(Icons.clear,color: Color(item.inColor),size: 15,)).p4()
//            IconButton(
//              icon: Icon(Icons.check_circle, color: Colors.green, size: 10),
//              onPressed: onClicked,
//            ),
          ],
        ),
      );
}
