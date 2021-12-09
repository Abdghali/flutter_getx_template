import 'package:get/get_state_manager/get_state_manager.dart';

 abstract class Service<Modle> extends GetxService{
   
// @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//   }
//   @override
//   void onReady() {
//     // TODO: implement onReady
//     super.onReady();
//   }
//   @override
//   void onClose() {
//     // TODO: implement onClose
//     super.onClose();
//   }
Future<Modle?>  create({required Map<String,dynamic> data});
Future<Modle?>  update({required Modle model});
Future<bool>  delete({required String id});
Future<List<Modle>?> findAll({Map<String,dynamic> filter,int page});
Future<Modle?> findOne({required String id});




}