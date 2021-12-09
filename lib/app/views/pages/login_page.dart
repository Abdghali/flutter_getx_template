import 'package:flutter_getx_template/app/bindings/login_binding.dart';
import 'package:flutter_getx_template/app/views/screens/login_screen.dart';
import 'package:flutter_getx_template/core/contracts/page.dart';

class LoginPage extends Page{
  LoginPage() : super(
    name: '/login',
    screen: LoginScreen(),
    myBinding: LoginBindings(),
  );

  
}