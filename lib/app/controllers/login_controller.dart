import 'package:flutter/material.dart';
import 'package:flutter_getx_template/base/controllers/base_login_controller.dart';
import 'package:get/get.dart';

class LoginController extends BaseLoginController {
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
 login() async {

   print("Loged in ");
     (userNameController.text.length > 0 &&
            passwordController.text.isNotEmpty)
        ? true
        : false;
  }

  bool checkIsEmail()  {
    return  GetUtils.isEmail(userNameController.text.toString()) ? true : false;
  }

  Future<String> emailValidator() async {
    if (userNameController.text.length != 0) {
      if (checkIsEmail()==false) {
        return "Wrong email form";
      }else{
      return "";
      }
    } else {
      return "Empty Feaild";
    }
  }

   String passwordValidator()  {
    if (passwordController.text.length!=0) {
      if (passwordController.text.length<6 ) {
        return "your password les that 6 chracter";
      }else{
      return "";
      }
    } else {
      return "Empty Feaild";
    }
  }



}
