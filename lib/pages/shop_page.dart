import 'package:coffeeapp/Components/coffee_tile.dart';
import 'package:coffeeapp/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../models/coffee.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);
showDialog(
  context: context,
  builder: (ctx) => AlertDialog(
      title: const Text("Successfully added to cart"),
      actions: <Widget>[
      TextButton(
      onPressed: () {
Navigator.of(ctx).pop();
},
  child: Container(
    color: Colors.white,
    padding: const EdgeInsets.all(14),
    child: const Text("Done"),
  ),
    ), ],
  ),
);




  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context,value,child)=>
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Text("Have Some Coffee !!",style: TextStyle(
                    fontSize: 20
                ),),
                SizedBox( height: 25,),
                Expanded(


                    child:ListView.builder(
                        itemCount:value.coffeeShop.length,
                        itemBuilder: (context, index)


                    {

                      Coffee eachCoffee= value.coffeeShop[index];
                      return CoffeeTile(coffee:eachCoffee,
                             icon: Icon(Icons.add),
                           onPressed:() => addToCart(eachCoffee),

                      );
                    }


                    )
                )
              ],

            ),
          ),
        )

    );
  }
}
