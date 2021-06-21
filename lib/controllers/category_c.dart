import 'dart:convert';

import 'package:eu_catalog/controllers/main_c.dart';
import 'package:eu_catalog/env/config.dart';
import 'package:eu_catalog/models/group_m.dart';
import 'package:eu_catalog/models/image_m.dart';
import 'package:eu_catalog/services/app_states/current_state.dart';
import 'package:eu_catalog/view/ProductP/product.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class CategoryController extends GetxController {
  MainController controller = Get.find();

  GroupM currentGroup;
  GroupM currentSubGroup;
  List<GroupM> subgroups;
  List<ImageM> subGroupImageList = List();
  CurrentState state = CurrentState.loading();

  Logger logger;
  @override
  void onInit() {
    logger = Logger();
    initController();
    getProducts();
    super.onInit();
  }

  void getProducts() {}

  void initController() {
    state = CurrentState.loading();
    update();
    currentGroup = controller.selectedGroup;
    subgroups = currentGroup.subGroups;
    getSubGroupImages();
    logger.d(subgroups);
  }

  Future<void> getSubGroupImages() async {
    Map<String, String> headers = {'JWT': controller.jwt};

    try {
      var response =
          await http.get(API.CDN + "images?context=subgroup", headers: headers);
      var res = jsonDecode(response.body);

      List<ImageM> tempImageList = List();

      for (int i = 0; i < res["images"].length; i++) {
        tempImageList.add(ImageM.fromJson(res["images"][i]));
      }

      tempImageList.forEach((ImageM imageM) {
        subgroups.forEach((GroupM groupM) {
          if (imageM.productId.toString() == groupM.id) {
            subGroupImageList.add(imageM);
          }
        });
      });

      state = CurrentState.noError();
      update();
    } catch (e) {
      state = CurrentState.error(e.toString());
      update();
      logger.d(e);
    }
  }

  void onItemTap(int idx) {
    currentSubGroup = subgroups[idx];
    logger.d(currentSubGroup.name);
    Get.to(() => ProductPage());
  }
}
