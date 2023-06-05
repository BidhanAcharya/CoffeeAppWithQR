import 'package:coffeeapp/models/coffee.dart';
import 'package:coffeeapp/pages/QR.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/coffee_tile.dart';
import '../models/coffee_shop.dart';



class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen:false).removeItemFromCart(coffee);

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) =>
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text('Your Cart',style: TextStyle(fontSize:20 ),),
                    SizedBox(height: 20,),
                    Expanded(child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index){
                        Coffee eachCoffee= value.userCart[index];
                        return CoffeeTile(coffee: eachCoffee,
                          icon: Icon(Icons.delete),
                          onPressed: () => removeFromCart(eachCoffee),
                        );
                      },
                    ),
                    ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>QRPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text('Pay',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                  ],
                ),
              ),
            ),
    );
  }

  void paynow() {


  }
}
