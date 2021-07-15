import 'dart:convert';

import 'package:eu_catalog/controllers/category_c.dart';
import 'package:eu_catalog/controllers/main_c.dart';
import 'package:eu_catalog/env/config.dart';
import 'package:eu_catalog/models/group_m.dart';
import 'package:eu_catalog/models/image_m.dart';
import 'package:eu_catalog/models/product_m.dart';
import 'package:eu_catalog/services/app_states/current_state.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ProductController extends GetxController {
  GroupM currentSubGroup;
  List<ImageM> productImageList = List();

  CategoryController categoryController = Get.find();
  MainController mainController = Get.find();
  List<ProductM> productList = List();
  Logger lg = Logger();

  CurrentState state = CurrentState.loading();

  @override
   onInit() async {
    currentSubGroup = categoryController.currentSubGroup;
    state = CurrentState.loading();
    update();
    callApis();
   
    super.onInit();
  }

  callApis() async {
    await fetchproducts();
    await fetchProductImages();
    state = CurrentState.noError();
    update();
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
      for (int i = 0; i < res["records"].length; i++) {
        productList.add(ProductM.fromJson(res["records"][i]));
      }
    } on Exception catch (e) {
      state = CurrentState.error(e.toString());
      update();
      lg.d(e);
    }
  }

  Future<void> fetchProductImages() async {
    Map<String, String> headers = {'JWT': mainController.jwt};
    lg.d("HERTE");

    try {
      var response =
          await http.get(API.CDN + "images?context="+currentSubGroup.name, headers: headers);
      var res = jsonDecode(response.body);

      for (int i = 0; i < res["images"].length; i++) {
        productImageList.add(ImageM.fromJson(res["images"][i]));
        lg.d(productImageList[i].id.toString() + "IMAGE");
      }
    } catch (e) {
      state = CurrentState.error(e.toString());
      update();
      lg.d(e);
    }
  }
}
