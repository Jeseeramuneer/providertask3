import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask3/provider/providerclass.dart';
import 'homepage.dart';
 void main()=>runApp(
   ChangeNotifierProvider(create: (context)=>Providerclass(),
    child: MaterialApp(

     theme: ThemeData(primarySwatch: Colors.blueGrey),
     debugShowCheckedModeBanner: false,

     home: ItemList(),
    )
   )
 );