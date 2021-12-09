import 'package:flutter/material.dart';

import 'package:flutter_getx_template/app/controllers/login_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.loginFormKey,
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 20,
              child: TextFormField(
                key: const Key('username') ,
                controller: controller.userNameController,
                decoration:const InputDecoration(
                  hintText: 'UserName',
                ),
              ),
            ),
            SizedBox(
                 width: 200,
              height: 20,
              child: TextFormField(
                key: const Key('password') ,
                controller: controller.passwordController,
                decoration:const InputDecoration(
                  hintText: 'Password',
                ),),
            ),
            ElevatedButton(onPressed: controller.login, child: Text("Login")),
          ],
        ));
  }
}
