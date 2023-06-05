import 'package:flutter/material.dart';
import 'coffee.dart';
class CoffeeShop extends ChangeNotifier {

final  List<Coffee> _shop=[
  Coffee(
      name:'Cappuccino' ,
      price:'\$${4.41}'  ,
      imagepath:"lib/coffeimg/Cappuccino.jpg" ),
  Coffee(
      name:'Macchiato' ,
      price:'\$${4.15}'   ,
      imagepath:"lib/coffeimg/macchiato.jpg" ),
  Coffee(
      name:'Frappe' ,
      price:'\$${13.99}'   ,
      imagepath:"lib/coffeimg/Frappe.jpg" ),
  Coffee(
      name:'Latte' ,
      price:'\$${4.16}'   ,
      imagepath:"lib/coffeimg/Latte_art.jpg" ),


  Coffee(
    name:'Americano' ,
    price:'\$${2.62}'   ,
    imagepath:"lib/coffeimg/americano.jpg" ),





  Coffee(
      name:'Hot-chocolate' ,
      price:'\$${3.45}'   ,
      imagepath:"lib/coffeimg/hot-chocolate.jpg" ),









  Coffee(
      name:'Mocha' ,
      price:'\$${4.21}'  ,
      imagepath:"lib/coffeimg/mocha.jpg" )

];
 List<Coffee> _userCart=[];
List<Coffee>  get coffeeShop=> _shop;
List<Coffee>  get userCart=> _userCart;
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();


}

  void removeItemFromCart(Coffee coffee) {
  _userCart.remove(coffee);
  notifyListeners();
  }








}