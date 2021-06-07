import 'package:eu_catalog/view/CatalogP/catalog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/main_c.dart';
import 'view/global_w/error_w.dart';
import 'view/global_w/loading_w.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GetBuilder<MainController>(
        builder: (gxValues) {
          return gxValues.state.when(error: (e) {
            return ErrorW(e);
          }, loading: () {
            return LoadingW();
          }, noError: () {
            return CatalogPage();
          });
        },
      ),
    );
  }
}


