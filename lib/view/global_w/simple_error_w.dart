import 'package:flutter/material.dart';

class SimpleErrorW extends StatelessWidget {
  SimpleErrorW(this.e);
  final e;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Text("Error Occured " + e.toString()),
      ),
    );
  }
}
