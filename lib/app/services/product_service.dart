import 'package:flutter_getx_template/base/models/base_product.dart';
import 'package:flutter_getx_template/base/services/base_product_service.dart';

class ProductService extends BaseProductService<BaseProduct>{
  @override
  Future<BaseProduct?> create({required Map<String, dynamic> data}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> delete({required String id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List?> findAll({Map<String, dynamic>? filter, int? page}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future findOne({required String id}) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future update({required model}) {
    // TODO: implement update
    throw UnimplementedError();
  }


}