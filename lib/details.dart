import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopify/home_screen.dart';
import 'product.dart';
import 'body.dart';
import 'constant.dart';

class DetailScreen extends StatelessWidget {
  late Product products;

  DetailScreen({Key? key, required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text(products.title)),
            body: Column(children: [
              Container(
                  height: 250, width: 140, child: Image.network(products.image))
            ])));
  }
}
