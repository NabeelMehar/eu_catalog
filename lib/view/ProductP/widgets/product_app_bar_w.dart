import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';

class ProductAppBarW extends StatelessWidget {
  const ProductAppBarW({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: kblue,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          SizedBox(
            width: 5,
          ),
          Text("Catalog",
              style: TextStyle(
                color: kblue,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              )),
          Expanded(child: SizedBox()),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: kblue,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
