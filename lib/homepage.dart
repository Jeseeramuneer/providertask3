import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask3/provider/providerclass.dart';

import 'cart.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      'Apple',
      'Banana',
      'Grape',
      'Kiwi',
      'Mango',
      'Orange',
      'Papaya',
      'Pineapple',
      'Strawberry'
    ];

    List image = [
      'images/apple.jpg',
      'images/banana.jpg',
      'images/grape.jpg',
      'images/kiwi.jpg',
      'images/mango.jpg',
      'images/orange.jpg',
      'images/papaya.jpg',
      'images/pineapple.jpg',
      'images/strawberry.jpg',
    ];
    final object = Provider.of<Providerclass>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text(
            "F r u i t s",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(image[index]),
                  ),
                  title: Text(
                    items[index],
                    style: TextStyle(fontSize: 15, color: Colors.yellowAccent),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      object.favitems(items[index], image[index]);
                    },
                    icon: object.icn_change(items[index])
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.blue,
                          ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        },
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
