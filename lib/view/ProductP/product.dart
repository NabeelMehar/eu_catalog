import 'package:eu_catalog/constants.dart';
import 'package:eu_catalog/controllers/category_c.dart';
import 'package:eu_catalog/controllers/product_c.dart';
import 'package:eu_catalog/view/ProductP/widgets/product_app_bar_w.dart';
import 'package:eu_catalog/view/ProductP/widgets/product_grid_w.dart';
import 'package:eu_catalog/view/global_w/bottom_nav_bar_w.dart';
import 'package:eu_catalog/view/global_w/simple_error_w.dart';
import 'package:eu_catalog/view/global_w/simple_loading_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<ProductController>(builder: (gxval) {
        return gxval.state.when(error: (e) {
          return SimpleErrorW(e);
        }, loading: () {
          return SimpleLoadingW();
        }, noError: () {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductAppBarW(),
                  SizedBox(
                    height: 10,
                  ),
                  GetBuilder<CategoryController>(
                    builder: (gxVal) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(gxVal.currentSubGroup.name,
                            style: TextStyle(
                              color: ktblack,
                              fontSize: 36,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            )),
                      );
                    },
                  ),
                  ProductGridW(gxval.productImageList, gxval.productList),
                ],
              ),
            ),
          );
        });
      }),
      // bottomNavigationBar: BottomNavBarW(),
    );
  }
}
