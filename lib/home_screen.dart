import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constant.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppbar(),
      body: Body(),
    );
  }
}

AppBar builAppbar() {
  return AppBar(
    title: Text(
      'Amazon',
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Color(0xffcbe6ea),
    leading: IconButton(
      icon: SvgPicture.network(
          'https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/01a877fdf35b0698d4a4594b1ec406dc63909cce/assets/icons/back.svg'),
      onPressed: (() {}),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.network(
            'https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/01a877fdf35b0698d4a4594b1ec406dc63909cce/assets/icons/search.svg',
            color: Colors.white,
          )),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.network(
            'https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/01a877fdf35b0698d4a4594b1ec406dc63909cce/assets/icons/cart.svg',
            color: Colors.white,
          )),
    ],
  );
}
