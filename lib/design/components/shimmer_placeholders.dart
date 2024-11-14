import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShimmerPlaceholder extends StatelessWidget{
  final double width;
  final double height;
  final double boarderRadius;
  final EdgeInsets margin;
  const ShimmerPlaceholder({
    this.width=double.infinity,
    this.height=32,
    this.boarderRadius=24,
    this.margin= const EdgeInsets.symmetric(horizontal: 16,vertical:3),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: margin,
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(boarderRadius),
      color: Colors.white
    ),
    );
  }

}