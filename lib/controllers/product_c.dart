import 'dart:convert';

import 'package:eu_catalog/controllers/category_c.dart';
import 'package:eu_catalog/controllers/main_c.dart';
import 'package:eu_catalog/env/config.dart';
import 'package:eu_catalog/models/group_m.dart';
import 'package:eu_catalog/models/product_m.dart';
import 'package:eu_catalog/services/app_states/current_state.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ProductController extends GetxController {
  GroupM currentSubGroup;
  CategoryController categoryController = Get.find();
  MainController mainController = Get.find();
  List<ProductM> productList;
  Logger lg = Logger();

  CurrentState state;

  @override
  void onInit() {
    currentSubGroup = categoryController.currentSubGroup;
    state = CurrentState.loading();
    update();
    callApis();
    super.onInit();
  }

  void callApis() {
    fetchproducts();
    fetchProductImages();
  }

  Future<void> fetchproducts() async {
    Map data = {
      'clientCode': API.CLIENTCODE,
      'username': API.USERNAME,
      'password': API.PASSWORD,
      'request': 'getProducts',
      'sendContentType': '1',
      'sessionKey': mainController.sessionCode,
      'groupID': currentSubGroup.id
    };

    try {
      var response = await http.post(API.BASE, body: data);
      var res = jsonDecode(response.body);
      lg.d(res);
    } on Exception catch (e) {
      state = CurrentState.error(e.toString());
      update();
      lg.d(e);
    }
  }

  void fetchProductImages() {}
}
