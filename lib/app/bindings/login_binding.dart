import 'package:flutter_getx_template/app/controllers/login_controller.dart';
import 'package:get/get.dart';
class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
