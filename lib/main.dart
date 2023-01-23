import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopify/home_screen.dart';
import 'package:shopify/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Container(
          child: Image.network(
            'data:image/png;base64,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',
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
