import 'package:ess_redesign/design/uttils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../uttils/app_assets.dart';
import '../uttils/app_texttheme.dart';
import 'c_text.dart';

class CCoreButton extends CupertinoButton{
  const CCoreButton({
    super.key,
    super.color,
    required super.child,
    super.onPressed,
    super.alignment,
    super.padding = EdgeInsets.zero,
    super.borderRadius= const BorderRadius.all(Radius.circular(24))
  }):super(
      minSize: 0,
      disabledColor: Colors.transparent,
      pressedOpacity:0.6
  );
}
class CElevatedButton extends StatelessWidget{
  final double? height;
  final String text;
  final String icon;
  final double? width;
  final Color? bg;
  final double boarderRadius;
  final BoxBorder? border;
  const CElevatedButton({
    this.height=52,
    this.width=double.infinity,
    this.bg,
    this.boarderRadius=32,
    this.border,
    required this.text,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return CCoreButton(
        child:Container(
         height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(boarderRadius),
            border: border,
            color: bg
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CText(text,style: TextXTheme.text16.copyWith(color:darkPrimary)),
                SizedBox(width: 5),
                SvgPicture.asset(icon)
              ],
            ),


        ));
  }

}