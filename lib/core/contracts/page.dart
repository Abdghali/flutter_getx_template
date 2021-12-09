import 'package:flutter_getx_template/core/contracts/screen.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

abstract class Page extends GetPage {
  late String name;
  late Screen screen;
  // late Bindings? binding;
  Bindings? myBinding;
  late List<GetMiddleware>? middleware;
  Page(
      {required String this.name,
      required Screen this.screen,
      Bindings? myBinding,
      List<GetMiddleware>? middleware})
      : super(
            name: name,
            page: () => screen,
            binding: myBinding,
            middlewares: middleware);
}
