import 'package:burgerapp/model/data.dart';
import 'package:burgerapp/model/shopping_item.dart';
import 'package:burgerapp/widget/BurgerBottom.dart';
import 'package:burgerapp/widget/BurgerTop.dart';
import 'package:burgerapp/widget/shopping_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final key = GlobalKey<AnimatedListState>();
  final items = List.from(Data.shoppingList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Burger Builder App"),
        leading: Icon(Icons.menu),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            30.heightBox,
            BurgerTop(),
            AnimatedList(
              shrinkWrap: true,
              key: key,
              initialItemCount: items.length,
              itemBuilder: (context, index, animation) =>
                  buildItem(items[index], index, animation),
            ),


            BurgerBottom(),
            buildInsertButton()

          ],
        ),
      ),
    );}

    Widget buildItem(item, int index, Animation<double> animation) =>
        ShoppingItemWidget(
          item: item,
          animation: animation,
          onClicked: () => removeItem(index),
        );

    Widget buildInsertButton() => RaisedButton(
      child: Text(
        'Insert item',
        style: TextStyle(fontSize: 20),
      ),
      color: Colors.white,
      onPressed: () => insertItem(1, Data.shoppingList.first),
    );

    void insertItem(int index, ShoppingItem item) {
      items.insert(index, item);
      key.currentState.insertItem(index);
    }

    void removeItem(int index) {
      final item = items.removeAt(index);

      key.currentState.removeItem(
        index,
            (context, animation) => buildItem(item, index, animation),
      );
    }

  }


