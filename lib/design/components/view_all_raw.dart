import 'package:ess_redesign/design/components/c_corebutton.dart';
import 'package:ess_redesign/design/uttils/app_assets.dart';
import 'package:ess_redesign/design/uttils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../uttils/app_texttheme.dart';
import 'c_text.dart';

class ViewAllRaw extends StatelessWidget{
  final String title;
  final void  Function()? onPress;
  const ViewAllRaw({
    super.key,
    required this.title,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return CCoreButton(
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16,end: 16),
        child: Row(
          children: [
            CText(title,style:TextXTheme.text16.copyWith(color: darkPrimary)),
            if(onPress != null)...[
              Spacer(),
              CText("View All",style: TextXTheme.text14.copyWith(fontWeight: FontWeight.w600,color: darkPrimary),) ,
              SizedBox(width: 8,),
              SvgPicture.asset(AppIcons.arrowRight),
            ]
          ],
        ),
      ),
    );
  }
}
