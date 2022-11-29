import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping List: " + itemArgs.name),
        ),
        body: Center(
            child: Text("Item Name: " +
                itemArgs.name +
                "\nItem Merk: " +
                itemArgs.merk +
                "\nItem Price: Rp. " +
                itemArgs.price.toString())));
  }
}
