import 'package:eu_catalog/auth/components/size_config.dart';
import 'package:flutter/material.dart';
import 'widgets/body.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Body(),
    );
  }
}
