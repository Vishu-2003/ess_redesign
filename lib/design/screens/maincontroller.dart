import 'package:ess_redesign/design/uttils/app_colors.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    geData();
  }
  Rx<int> selectedIndex=0.obs;
  bool isLoading=false;
  Future<void>geData()async{
    isLoading=true;
    update();
    await Future.delayed(Duration(seconds: 5));
    isLoading=false;
    update();
  }
}
