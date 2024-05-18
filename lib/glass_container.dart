import 'package:flutter/material.dart';
import 'dart:ui';

class GlassContainer extends StatelessWidget {
  final double shadowBlurRadius; // Shadow Blur Radius
  final double shadowSpreadRadius; // Shadow Spread Radius 
  final Color shadowColor; // Color of Shadow of Container
  final double sigmaX; // x value for pixel blur
  final double sigmaY; // y value for pixel blur
  final double contHeight; // Container Height
  final double contWidth; // Container Width
  final Color contColor; // Color of the Container
  final BorderRadius radius; // Preferred Radius of the Container
  final Color borderRadiusColor; // Color of the Border Radius
  final Widget? child; // Child Widget

  const GlassContainer({
    Key? key,
    this.shadowBlurRadius = 24.0,
    this.shadowSpreadRadius = 16.0,
    this.shadowColor = const Color.fromRGBO(0, 0, 0, 0.2),
    this.sigmaX = 20.0,
    this.sigmaY = 20.0,
    this.contHeight = 200.0,
    this.contWidth = 200.0,
    this.contColor = const Color.fromRGBO(255, 255, 255, 0.3),
    this.radius = const BorderRadius.all(Radius.circular(16.0)),
    this.borderRadiusColor = const Color.fromRGBO(255, 255, 255, 0.3),
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: shadowBlurRadius,
            spreadRadius: shadowSpreadRadius,
            color: shadowColor,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: radius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: Container(
            height: contHeight,
            width: contWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  contColor,
                  contColor.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: radius,
              border: Border.all(
                width: 1.5,
                color: borderRadiusColor,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
