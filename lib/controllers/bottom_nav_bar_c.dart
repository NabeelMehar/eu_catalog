import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  int index;

  @override
  void onInit() {
    index = 0;
    super.onInit();
  }

  void changeTab(int idx) {
    index = idx;
    update();
  }
}
