import 'package:meta/meta.dart';

class ShoppingItem {
  //final String title;
  //final String urlImage;
 final double inWidth;
 final double inHeight;
 final String roundCorner;
 final int inColor;


  const ShoppingItem({
    @required this.inHeight,
    @required this.inWidth,
    @required this.roundCorner,
    @required this.inColor,
  });
}
