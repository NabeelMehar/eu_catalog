import 'package:flutter/material.dart';

class ErrorW extends StatelessWidget {
  
  ErrorW(this.e);
  final  e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text("Error Occured " + e.toString()),
          ),
        ),
      ),
    );
  }
}
