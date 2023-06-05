import 'package:coffeeapp/models/coffee_shop.dart';
import 'package:coffeeapp/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

        create: (context)=> CoffeeShop(),
      builder: (context, child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),


    );
  }
}
