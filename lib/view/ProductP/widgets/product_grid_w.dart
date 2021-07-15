import 'package:eu_catalog/models/image_m.dart';
import 'package:eu_catalog/models/product_m.dart';
import 'package:eu_catalog/view/ProductP/widgets/product_tile_w.dart';
import 'package:flutter/material.dart';

class ProductGridW extends StatelessWidget {
  ProductGridW(this.productImageList, this.productList);
  final List<ProductM> productList;
  final List<ImageM> productImageList;
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          padding: const EdgeInsets.all(5),
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.6,
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (ctx, idx) {
            // print(products[idx].image);
            return ProductTileW(idx ,productImageList ,productList);
          });
  }
}
