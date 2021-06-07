import 'dart:convert';

import 'package:eu_catalog/env/config.dart';
import 'package:eu_catalog/models/group_m.dart';
import 'package:eu_catalog/models/image_m.dart';
import 'package:eu_catalog/models/user_m.dart';
import 'package:eu_catalog/services/app_states/current_state.dart';
import 'package:eu_catalog/view/CategoriesP/catagory.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class MainController extends GetxController {
  var sessionCode = "";
  String jwt = "";

  Logger lg = Logger();
  UserM userM;
  List<GroupM> groupList = List();
  List<ImageM> imageList = List();

  GroupM selectedGroup;

  CurrentState state = CurrentState.loading();

  @override
  void onInit() {
    callApi();
    super.onInit();
  }

  Future<void> callApi() async {
    await verifyUser();
    await getProductGroups();
    await getImages();
    state = CurrentState.noError();
    update();
  }

  Future<void> verifyUser() async {
    Map data = {
      'clientCode': API.CLIENTCODE,
      'username': API.USERNAME,
      'password': API.PASSWORD,
      'request': 'verifyUser',
      'sendContentType': '1'
    };

    try {
      var response = await http.post(API.BASE, body: data);
      var res = jsonDecode(response.body);
      sessionCode = res["records"][0]["sessionKey"];
      jwt = res["records"][0]["token"];

      userM = UserM.fromJson(res["records"][0]);
      lg.d(userM.toString());
      lg.d("SessCode------------------------->>>>>>>>" + sessionCode);
      lg.d("JWT------------------------->>>>>>>>" + jwt);
    } catch (e) {
      state = CurrentState.error(e.toString());
      update();
      lg.d(e);
    }
  }

  Future<void> getProductGroups() async {
    Map data = {
      'clientCode': API.CLIENTCODE,
      'username': API.USERNAME,
      'password': API.PASSWORD,
      'request': 'getProductGroups',
      'sendContentType': '1',
      'sessionKey': sessionCode
    };

    try {
      var response = await http.post(API.BASE, body: data);
      var res = jsonDecode(response.body);

      for (int i = 0; i < res['records'].length; i++) {
        groupList.add(GroupM.fromJson(res['records'][i]));
      }
    } on Exception catch (e) {
      state = CurrentState.error(e.toString());
      update();
      lg.d(e);
    }
  }

  Future<void> getImages() async {
    Map<String, String> headers = {'JWT': jwt};

    try {
      var response =
          await http.get(API.CDN + "images?context=category", headers: headers);
      var res = jsonDecode(response.body);
      for (int i = 0; i < res["images"].length; i++) {
        imageList.add(ImageM.fromJson(res["images"][i]));
      }

      state = CurrentState.noError();
      update();
    } catch (e) {
      state = CurrentState.error(e.toString());
      update();
      lg.d(e);
    }
  }

  void onCategoryTap(int idx) {
    selectedGroup = groupList[idx];

    lg.wtf("Selected Group===================>>>" + selectedGroup.name);

    Get.to(() => CatagoryPage());
  }
}
