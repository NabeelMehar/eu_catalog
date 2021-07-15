import 'package:eu_catalog/controllers/bottom_nav_bar_c.dart';
import 'package:eu_catalog/view/CatalogP/catalog.dart';
import 'package:eu_catalog/view/SettingsP/settings.dart';
import 'package:eu_catalog/view/global_w/bottom_nav_bar_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class FirstPage extends StatelessWidget {
  final List<Widget> _listWidget = [CatalogPage(), demoW(), SettingsPage()];
  final controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      builder: (gxVal) {
        return Scaffold(
          backgroundColor: kwhite,
          body: _listWidget[gxVal.index],
          bottomNavigationBar: BottomNavBarW(),
        );
      },
    );
  }
}

Widget demoW() {
  return Container(
    child: Text(
      "Page 1",
      style: TextStyle(color: Colors.red, fontSize: 30),
    ),
  );
}

Widget demoW2() {
  return Container(
    child: Text(
      "Page 2",
      style: TextStyle(color: Colors.black, fontSize: 35),
    ),
  );
}
