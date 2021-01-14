import 'package:flutter/material.dart';
import 'dart:ui';
// ignore: must_be_immutable
class GlassContainer extends StatelessWidget { // simple widget for implementing glass morphism in Flutter Application
  double shadowBlurRadius; // Shadow Blur Radius
  double shadowSpreadRadius;// Shadow Spread Radius 
  Color shadowColor; // Color of Shadow of Container default is white with opacity 0.2
  double sigmax; // x value for pixel blur, default is 20
  double sigmay;// y value for pixel blur, default is 20
  double contHeight; // Container Height, default is set to screen size*0.4
  double contWidth; // container width , deafault is set to screen size*0.4
  Color contColor; // color of the container deafult is white with opacity 0.2
  BorderRadius radius; // prefered radius of the container defalut is circular(16)
  Color borderRadiusColor; // deafult color is white with opacity 0.2
  Widget child; // child optional
  GlassContainer({
    this.contHeight,
    this.contWidth,
    this.contColor,
    this.radius,
    this.borderRadiusColor,
    this.shadowColor,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.sigmax,
    this.sigmay,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: shadowBlurRadius == null ? 24 : shadowBlurRadius,
          spreadRadius: shadowSpreadRadius == null ? 16 : shadowSpreadRadius,
          color: shadowColor == null
              ? Colors.black.withOpacity(0.2)
              : shadowColor,
        )
      ]),
      child: ClipRRect(
        borderRadius: radius == null ? BorderRadius.circular(16) : radius,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigmax == null ? 20 : sigmax,
            sigmaY: sigmay == null ? 20 : sigmay,
          ),
          child: Container(
            height: contHeight == null
                ? MediaQuery.of(context).size.width * 0.4
                : contHeight,
            width: contWidth == null
                ? MediaQuery.of(context).size.height * 0.4
                : contWidth,
            decoration: BoxDecoration(
                color: contColor == null
                    ? Colors.white.withOpacity(0.3)
                    : contColor,
                borderRadius:
                    radius == null ? BorderRadius.circular(16) : radius,
                border: Border.all(
                  width: 1.5,
                  color: borderRadiusColor == null
                      ? Colors.white.withOpacity(0.3)
                      : borderRadiusColor,
                )),
            child: child,
          ),
        ),
      ),
    );
  }
}
