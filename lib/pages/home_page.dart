import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  final int days = 30;
  final String name = "Ahasan";

  @override
  Widget build(BuildContext context) {
    // Dummy List Generate
    //final dummycontent = List.generate(40, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          // Model List Query Generate
          //itemCount: dummycontent.length,
          itemCount: CatelogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              // Model List Query Generate
              // item: dummycontent[index],
              item: CatelogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
