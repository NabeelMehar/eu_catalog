import 'package:eu_catalog/view/CatalogP/widgets/catalog_app_bar_w.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets/catalog_list_w.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   backgroundColor: kwhite,
        //   body:
        SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CatalogAppBarW(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Spring Summer",
                style: TextStyle(
                  color: ktblack,
                  fontSize: 36,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          CatelogListW()
        ],
      ),
    );
    // bottomNavigationBar: BottomNavBarW(),
    // );
  }
}
