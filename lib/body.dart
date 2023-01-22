import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopify/constant.dart';
import 'categories.dart';
import 'product.dart';
import 'details.dart';

class Body extends StatelessWidget {
  var index1 = 0;
  // const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("women", style: Theme.of(context).textTheme.headline5),
      Categories(),
      Expanded(
          child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.75),
        itemBuilder: (context, index) => Itemcard(
          products: products[index],
        ),
      ))
    ]);
  }
}

class Itemcard extends StatelessWidget {
  late Product products;
  Itemcard({required this.products});
  // const Itemcard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      products: products,
                    )),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                // For  demo we use fixed height  and width
                // Now we dont need them
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: products.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: "${products.id}",
                  child: Image.network(products.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 3),
              child: Text(
                // products is out demo list
                products.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "\$${products.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              products.description,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}

void press() {}
