import 'package:ess_redesign/design/uttils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension WidgetExtension on Widget{
  Widget showShimmer(){
  return Shimmer.fromColors(
        baseColor:Colors.white,
        highlightColor: Colors.grey.shade200,
        child: this,
  );}

  Widget defaultContainer({
    double hp=16,
    double vp=16,
    double hm=16,
    double vm=0,
    double boarderRadius=24,
    BoxBorder? boarder
}){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: hm,vertical: vm),
      padding: EdgeInsets.symmetric(horizontal: hp,vertical: vp),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(boarderRadius),
        color:white,
        border: boarder
      ),
      child: this,
    );
  }
}