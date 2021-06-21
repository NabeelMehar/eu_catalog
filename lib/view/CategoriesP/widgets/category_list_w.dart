import 'package:cached_network_image/cached_network_image.dart';
import 'package:eu_catalog/controllers/category_c.dart';
import 'package:eu_catalog/env/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(builder: (gxVal) {
      return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: gxVal.subgroups.length,
        itemBuilder: (ctx, idx) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Divider(
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    gxVal.onItemTap(idx);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: API.CDN +
                                  "images/" +
                                  gxVal.subGroupImageList[idx].tenant +
                                  "/" +
                                  gxVal.subGroupImageList[idx].key,
                              placeholder: (context, url) => Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: Color(0xffbebec4),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            gxVal.subgroups[idx].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
