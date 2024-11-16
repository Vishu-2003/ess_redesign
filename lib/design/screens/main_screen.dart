import 'package:ess_redesign/design/components/shimmer_placeholders.dart';
import 'package:ess_redesign/design/screens/maincontroller.dart';
import 'package:ess_redesign/design/uttils/app_assets.dart';
import 'package:ess_redesign/design/uttils/extension.dart';
import 'package:ess_redesign/design/uttils/set_images.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../uttils/app_colors.dart';
import 'Tab/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      floatingActionButton:FloatingActionButton(),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomBar(),
      appBar: AppBar(
        backgroundColor: white,
        leadingWidth: 140,
        leading:Padding(
          padding: const EdgeInsetsDirectional.only(start: 8),
          child: SvgPicture.asset(AppLogo.nessLogo),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             IconButton(
                 onPressed: (){},
                 icon: SvgPicture.asset(AppIcons.notification,width: 25,))
            ],
          )
        ],
      ),
      body: GetBuilder<MainController>(
          init:MainController() ,
          builder: (controller){
        return RefreshIndicator(
          onRefresh: controller.geData,
          color: bluePrimary,
          child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children:[
                controller.isLoading
                    ?HomePage.Shimmer()
                    :HomePage()
              ]

          ),
        );
      })
    );
  }
}
class FloatingActionButton extends StatelessWidget {
  const FloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      buttonSize: Size(52, 52),
      backgroundColor: bluePrimary,
      child: Icon(Icons.add,color: white),
    );
  }
}
class BottomBar extends StatelessWidget {
  const BottomBar();

  @override
  Widget build(BuildContext context) {
    int index=0;
   // return GetX<MainController>(
     //  init: MainController(),
       // builder: (controller){
        return ClipPath(
          clipper:CurvedBottomBarClipper() ,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                BottomBarIcon(icon:AppNavbar.homeInactive, index: index++,),
                BottomBarIcon(icon:AppNavbar.taskInactive, index: index++,),
                SizedBox(width: 30,),
                BottomBarIcon(icon:AppNavbar.feedInactive, index:index++,),
                BottomBarIcon(icon:AppNavbar.profileInactive, index: index++,)
              ],
            ),


          ),
        );
   // });
  }
}
class BottomBarIcon extends GetWidget<MainController> {
  final String icon;
  final int index;
  const BottomBarIcon({
        required this.icon,
        required this.index}
      );

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:(){},
        icon:setIcon(icon)
    );
  }
}
class CurvedBottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double fabRadius = 40.0;
    final double centerX = size.width /2;
    final double curveDepth = 20.0;

    Path path = Path();
    path.lineTo(centerX - fabRadius - 20, 0);
    path.quadraticBezierTo(
      centerX - fabRadius, 0,
      centerX - fabRadius + 10, curveDepth,
    );
    path.arcToPoint(
      Offset(centerX + fabRadius -10, curveDepth),
      radius: Radius.circular(fabRadius),
      clockwise: false,
    );
    path.quadraticBezierTo(
      centerX + fabRadius, 0,
      centerX + fabRadius + 20, 0,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}