import 'package:eu_catalog/controllers/main_c.dart';
import 'package:eu_catalog/env/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CatelogListW extends StatelessWidget {
  const CatelogListW({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<MainController>(builder: (gxValues) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: gxValues.imageList.length,
          itemBuilder: (ctx, idx) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  gxValues.onCategoryTap(idx);
                },
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: API.CDN +
                              "images/" +
                              gxValues.imageList[idx].tenant +
                              "/" +
                              gxValues.imageList[idx].key,
                          placeholder: (context, url) => Container(
                            width: 254.44,
                            height: 180.15,
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
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        gxValues.groupList[idx].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
