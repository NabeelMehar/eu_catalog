import 'package:cached_network_image/cached_network_image.dart';
import 'package:eu_catalog/env/config.dart';
import 'package:eu_catalog/models/image_m.dart';
import 'package:eu_catalog/models/product_m.dart';
import 'package:flutter/material.dart';

class ProductTileW extends StatelessWidget {
  ProductTileW(this.idx, this.productImageList, this.productList);
  final List<ImageM> productImageList;
  final List<ProductM> productList;
  final int idx;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 240,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: API.CDN +
                  "images/" +
                  productImageList[idx].tenant +
                  "/" +
                  productImageList[idx].key,
              placeholder: (context, url) => Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0xffbebec4),
                ),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
        SizedBox(
          width: 150,
          child: Text(
            productList[idx].name,
            style: TextStyle(
                color: Color(0xff3c3c40),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
        Text("\$" + productList[idx].price.toString(),
            style: TextStyle(
                color: Color(0xffababaf), fontSize: 22, fontFamily: 'Petrona'))
      ],
    );
  }
}
