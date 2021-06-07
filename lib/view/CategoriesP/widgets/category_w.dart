import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryW extends StatelessWidget {
  CategoryW({this.subcategoryTitle, this.seeNum});

  final subcategoryTitle;
  final seeNum;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(subcategoryTitle,
                    style: TextStyle(
                      color: ktblack,
                      fontSize: 24,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    )),
                Expanded(child: SizedBox()),
                FlatButton(
                  child: Text("See All " + seeNum,
                      style: TextStyle(
                        color: kblue,
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      )),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (ctx, idx) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 140,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffe6e6e8),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
