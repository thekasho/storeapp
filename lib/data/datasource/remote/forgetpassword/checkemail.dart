import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  postdata(String email) async {
    var response = await crud.postData(AppLink.checkEmail, {
      "email" : email
    });
    print(response);
    return response.fold((l) => l, (r) => r);
  }
}