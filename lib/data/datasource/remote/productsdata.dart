import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class ProductsData {
  Crud crud;
  ProductsData(this.crud);

  getData(String catid) async {
    var response = await crud.postData(AppLink.products, {"id" : catid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}