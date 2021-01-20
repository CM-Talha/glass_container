# glass_container

A simple way of implementing glass morphism in flutter Applications. Just just import the package and start using it at any level of parent or as a inherited widget.
## Getting Started

This is a simple glass morphism widget which can be used in any place of a flutter application, it comes with a child, better to have a background image widget to have a better look and fell of glass Morphism.
## Installation 

Add this to your package's pubspec.yaml file:

dependencies:
  glass_container: ^0.0.1

run command:
    flutter pub get

## Usage

To give the look and feel of glass to the child widget of any background image use

``` dart
import 'package:flutter/material.dart';
import 'package:glass_container/glass_container.dart';

void main(){
    runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: LandingScreen(),
    );
  }
}

class LandingScreen extends StatefulWidget {
  LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://raw.githubusercontent.com/CM-Talha/glass_container/master/BG.jpg"),
              fit: BoxFit.cover,
            ),
        ),
        child: Center(
          child: GlassContainer(
            shadowBlurRadius: 80,
            shadowSpreadRadius: 10,
            contHeight: 500,
            contWidth: 400,
            child: Center(
              child:Text('Glass Morphism',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            )
          ),
        ),
      ),
    );
  }
}```

  double shadowBlurRadius; // Shadow Blur Radius (default is set to 24)
  double shadowSpreadRadius;// Shadow Spread Radius (default is set to 16)
  Color shadowColor; // Color of Shadow of Container (default is set to white with opacity 0.2)
  double sigmax; // x value for pixel blur, (default is set to 20)
  double sigmay;// y value for pixel blur, (default is set to 20)
  double contHeight; // Container Height,
  double contWidth; // container width ,
  Color contColor; // color of the container (deafult is set to white with opacity 0.2)
  BorderRadius radius; // prefered radius of the container (defalut is set to circular(16))
  Color borderRadiusColor; // container border radius Color (deafult color is set to white with opacity 0.2)


This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
