import 'package:flutter/material.dart';
import 'package:target/models/catalog.dart';
import 'package:target/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class HomeDetailPage extends StatelessWidget {
  //const HomeDetailPage({Key? key}) : super(key: key);
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog}): assert(
  catalog!=null
  );  //super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color:context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding:EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                       context.theme.buttonColor,
                    ),
                    shape: MaterialStateProperty.
                    all(StadiumBorder(
                    ),
                    )
                ),
                child: "Buy".text.make()
            ).wh(100,50)
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
        child: Column(children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
          ).h32(context),
          Expanded(
              child:VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                color: context.cardColor ,
                  width: context.screenWidth,
                  child:Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                      "Test mood"
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16(),
                    ],
                  ).py64(),
                ),
              )
          )
        ],
        ),
      ),
    );
  }
}
