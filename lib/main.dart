import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/views/pages/login_page.dart';

import 'app/bindings/login_binding.dart';
import 'app/views/screens/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialBinding: LoginBindings(),
      home:  HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        // GetPage(name: '/login', page: () => LoginScreen(),binding:LoginBindings()),
        LoginPage()
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            key: const Key('log'),
            onPressed: () {
              Get.toNamed("/login");
            },
            child: const Text("Login")),
      ),
    );
  }
}
