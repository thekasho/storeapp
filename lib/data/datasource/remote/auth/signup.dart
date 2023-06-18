import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);

  postdata(String username, String password, String email, String phone) async {
    var response = await crud.postData(AppLink.signUp, {
      "username" : username,
      "password" : password,
      "email" : email,
      "phone" : phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}