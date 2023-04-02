import 'package:flutter/cupertino.dart';
import 'package:target/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});
  //const CatalogImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return  Image.network(
      image,
    ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}