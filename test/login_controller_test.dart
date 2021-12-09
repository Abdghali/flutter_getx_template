import 'package:flutter_getx_template/app/controllers/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

void main() {
  LoginController _loginController = Get.put(LoginController());

  // email validation test
  group("Email Validation Test", () {
    test("Empty Email Test", () async {
      _loginController.userNameController.text = "";
      String result = await _loginController.emailValidator();
      expect(result, 'Empty Feaild');
    });
    test("Wrong email form", () async {
      _loginController.userNameController.text = "as.as@com";
      String result = await _loginController.emailValidator();
      expect(result, 'Wrong email form');
    });

    test("Valid Email Test", () async {
      _loginController.userNameController.text = "abd@gmail.com";
      String result = await _loginController.emailValidator();
      expect(result, '');
    });
  });

  group("Password Validation", () {
    test("Empty password Test", () {
      _loginController.userNameController.text = '';
      String result = _loginController.passwordValidator();
      expect(result, 'Empty Feaild');
    });

    test("password less that 6 character", () {
      _loginController.passwordController.text = '12345';
      String result = _loginController.passwordValidator();
      expect(result, 'your password les that 6 chracter');
    });
  });
}
