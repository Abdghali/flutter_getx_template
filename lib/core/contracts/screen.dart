import 'package:flutter/src/foundation/key.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class Screen<Controller> extends GetResponsiveView<Controller>{
   Screen({Key? key}) : super(key: key);

}