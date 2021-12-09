import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/views/components/login_form.dart';
import 'package:flutter_getx_template/base/controllers/base_login_controller.dart';
import 'package:flutter_getx_template/core/contracts/screen.dart';

class LoginScreen extends Screen<BaseLoginController> {
LoginScreen({Key? key}) : super(key: key);


  
  // if you just wants one oriantation for all device
  // @override
  // // TODO: implement alwaysUseBuilder
  // bool get alwaysUseBuilder => true;
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return super.build(context);
  // }
  
  @override
  Widget? desktop() {
    return Scaffold(
      body: Row(
        children: [
          Text("desktop"),
          LoginForm(),
        ],
      ),
    );
  }

  @override
  Widget? tablet() {
   return Scaffold(
      body: Row(
        children: [
          Text("tablet"),
          LoginForm(),
        ],
      ),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("phone"),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
