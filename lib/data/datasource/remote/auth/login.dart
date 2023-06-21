import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postdata(String email, String password) async {
    var response = await crud.postData(AppLink.login, {
      "password" : password,
      "email" : email,
    });
    print(response);
    return response.fold((l) => l, (r) => r);
  }
}