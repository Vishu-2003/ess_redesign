import 'package:ess_redesign/design/components/c_corebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget setIcon(String icon,{
  Color? color,
  double? width,
  void Function()? onPress,
}){
  return CCoreButton(
     onPressed: onPress,
     child: SvgPicture.asset(
       icon,
       width: width,
       color: color,
     ),);
}