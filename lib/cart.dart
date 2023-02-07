import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask3/provider/providerclass.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Providerclass>(context);
    List imgStore = object.favImg;
    List nameStore = object.favName;
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cart",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: imgStore.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imgStore[index]),
                  ),
                  title: Text(
                    nameStore[index],
                    style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        object.favitems(nameStore[index], imgStore[index]);
                      },
                      icon: object.icn_change(nameStore[index])
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_outline, color: Colors.blue)),
                ),
              ),
            );
          }),
    );
  }
}
