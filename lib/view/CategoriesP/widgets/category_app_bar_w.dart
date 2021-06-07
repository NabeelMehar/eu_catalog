import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';

class CategoryAppBarW extends StatelessWidget {
  const CategoryAppBarW({
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
          FlatButton(
            child: Text("Refine",
                style: TextStyle(
                  color: kblue,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
