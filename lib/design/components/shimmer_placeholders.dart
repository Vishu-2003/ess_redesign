import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ShimmerPlaceholder extends StatelessWidget{
  final double width;
  final double height;
  final double boarderRadius;
  final EdgeInsets margin;
  const ShimmerPlaceholder({
    super.key,
    this.width=double.infinity,
    this.height=190,
    this.boarderRadius=24,
    this.margin= const EdgeInsets.symmetric(horizontal: 16,vertical:5),
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
class GridPlaceholder extends StatelessWidget{
 final int itemCount;
 final double boarderRadius;
 final EdgeInsets padding;
 final double maxCrossAxisExtent;
 final double width;
 final double height;
 const GridPlaceholder({
   super.key,
   this.itemCount=6,
   this.maxCrossAxisExtent=115,
   this.width=double.infinity,
   this.height=110,
   this.boarderRadius=24,
   this.padding= const EdgeInsets.symmetric(horizontal:16,vertical:5)

});

  @override
  Widget build(BuildContext context) {
   return AlignedGridView.custom(
     shrinkWrap: true,
     physics: NeverScrollableScrollPhysics(),
     itemCount: itemCount,
     mainAxisSpacing: 5,
     crossAxisSpacing:5,
     padding: padding,
     gridDelegate:SliverSimpleGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: maxCrossAxisExtent),
     itemBuilder: (BuildContext context, int index) {
       return Container(
           height: height,
           width: width,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(boarderRadius),
             color: Colors.white
           ),
       );
     },

   );
  }

}