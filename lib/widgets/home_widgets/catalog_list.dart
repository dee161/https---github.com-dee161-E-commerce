import 'package:flutter/material.dart';
import 'package:target/models/catalog.dart';
import 'package:target/pages/home_detail_page.dart';
import 'package:target/pages/home_page.dart';
import '../../widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';



class CatalogList extends StatelessWidget {
  //const CatalogList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context, MaterialPageRoute(
            builder: (context)=>HomeDetailPage(
                catalog: catalog,
            ),
          ),
          ),
            child: CatalogItem(catalog:catalog)
        );
      },
    );
  }
}


class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog}):assert(catalog!=null) ;//,super(key:key);


  //const CatalogItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.xl.color(context.accentColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding:EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
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
                          child: "Add to cart".text.make()
                      )
                    ],
                  ).pOnly(right: 8.0)
                ],
              )
          )
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}