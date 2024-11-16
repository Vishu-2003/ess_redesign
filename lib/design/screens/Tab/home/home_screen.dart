import 'package:ess_redesign/design/components/c_text.dart';
import 'package:ess_redesign/design/components/view_all_raw.dart';
import 'package:ess_redesign/design/uttils/app_assets.dart';
import 'package:ess_redesign/design/uttils/app_colors.dart';
import 'package:ess_redesign/design/uttils/app_texttheme.dart';
import 'package:ess_redesign/design/uttils/extension.dart';
import 'package:ess_redesign/design/uttils/set_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../components/c_corebutton.dart';
import '../../../components/shimmer_placeholders.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static Widget Shimmer(){
    return Column(
      children: [
        SizedBox(height: 10,),
        ShimmerPlaceholder(),
        ShimmerPlaceholder(),
        GridPlaceholder(),
        ShimmerPlaceholder()
      ],
    ).showShimmer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        WellComeCard(),
        ApprovalCard(),
        ViewAllRaw(title:'Your Task',onPress: (){},),
        TaskCard()
      ],
    );
  }
}
class WellComeCard extends StatelessWidget {
  const WellComeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText('Good Morning,',style: TextXTheme.text24,),
                  CText('Vaibhav!',style: TextXTheme.text24.copyWith(fontWeight: FontWeight.w400))
                ],
              ),
            ),
        CircleAvatar(
            radius: 25,
            backgroundColor: lightPurple,
            child: Image.asset(AppIcons.userWellCome))
          ],
        ),
        CText('You’re not Check-in yet Today.',style: TextXTheme.text16.copyWith(fontWeight: FontWeight.w500),),
        CText('10:59 AM',style: TextXTheme.text18,),
        SizedBox(height: 14,),
        CElevatedButton(
          border: Border.all(
            color: darkPrimary,
            width: 1),
          text: 'Check In',
          icon:AppIcons.checkIn,
        ),
      ],
    )
        .defaultContainer(hm: 16)
        .animate()
        .fade(duration: 200.ms)
        .slideY(begin: -0.3, duration: 200.ms, curve: Curves.decelerate);
  }
}
class ApprovalCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Row(
     children: [
       setIcon(AppIcons.approvalRequests),
       SizedBox(width: 8,),
       Column(
         children: [
           CText('Approval Requests',style: TextXTheme.text16,),
           CText('2 Pending requests',style: TextXTheme.text14,)
         ],
       ),
       Spacer(),
       Badge(backgroundColor: green,),
       SizedBox(width: 8,),
       setIcon(AppIcons.arrowRight)

     ],
   ).defaultContainer(vm:10 )
    .animate()
    .fadeIn(begin: -0.2, duration: 200.ms, curve: Curves.decelerate);

  }

}
class TaskCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Image.asset(AppIcons.task,height: 140),
      CText('No Tasks on The Horizon!',style: TextXTheme.text18.copyWith(color:darkPrimary),),
      CText('Add a task or ask management to add a new task to your bucket.',style: TextXTheme.text14.copyWith(),textAlign:TextAlign.center,)
    ],
  ).defaultContainer(vm: 10)
      .animate()
      .fade(duration: 200.ms)
      .slideY(begin: -0.3, duration: 200.ms, curve: Curves.decelerate);
  }
  
}