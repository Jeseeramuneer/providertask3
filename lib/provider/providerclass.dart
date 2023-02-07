import 'package:flutter/material.dart';
 class Providerclass extends ChangeNotifier {
     List favImg = [];
     List favName=[];
     List get favoriteImg =>favImg;
     List get favoriteName => favName;

     void favitems(String itemName,String image) {
       final favList = favImg.contains(image);
       if (favList) {
         favImg.remove(itemName);
         favName.remove(image);
       } else {
         favImg.add(itemName);
         favName.add(image);
       }
       notifyListeners();
     }
     bool icn_change(String iconName){
       final favIcn=favName.contains(iconName);
       return favIcn;
     }
   }
