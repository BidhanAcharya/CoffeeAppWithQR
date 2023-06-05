import 'package:coffeeapp/models/coffee.dart';
import 'package:flutter/material.dart';
//import 'coffee.dart';
class CoffeeTile extends StatelessWidget {
  final Widget icon;
  final Coffee coffee;
  void Function()? onPressed;

   CoffeeTile({super.key,required this.coffee,required this.onPressed,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(12)),
      margin:EdgeInsets.only( bottom:10 ) ,
      padding: EdgeInsets.symmetric(vertical:25, horizontal: 10 ),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagepath),
        trailing:IconButton(
            icon :icon,
          onPressed: onPressed ,
        ) ,
      ),
    );
  }
}
