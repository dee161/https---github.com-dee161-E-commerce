import 'package:flutter/material.dart';
import 'package:target/models/cart.dart';
import 'package:target/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body:  Column(
        children: [
          _CardList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}
class _CartTotal extends StatelessWidget {
  //const _CartTotal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        "\$${_cart.totalPrice}".text.xl5.color(context.theme.accentColor).make(),
        30.widthBox,
        ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet.".text.make()
              ),
              );
            },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
          child: "Buy".text.white.make(),
        ).w32(context)
      ],
      ),
    );
  }
}


class _CardList extends StatefulWidget {
  //const _CardList({Key? key}) : super(key: key);
  @override
  State<_CardList> createState() => _CardListState();
}
class _CardListState extends State<_CardList> {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return ListView.builder(
        itemCount :_cart.items?.length,
        itemBuilder: (context,index) => ListTile(
          leading:Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {},
          ),
          title: _cart.items[index].name.text.make(),
        ),
    );
  }
}


