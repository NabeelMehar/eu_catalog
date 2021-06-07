import 'package:eu_catalog/controllers/main_c.dart';
import 'package:eu_catalog/models/group_m.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  MainController controller = Get.find();

  GroupM currentGroup;
  List<GroupM> subgroups;

  @override
  void onInit() {
    initController();
    getProducts();
    super.onInit();
  }

  void getProducts() {}

  void initController() {
    currentGroup = controller.selectedGroup;
    subgroups = currentGroup.subGroups;
  }
}
