import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  postdata(String email, String password) async {
    var response = await crud.postData(AppLink.resetPassword, {
      "email" : email,
      "password" : password,
    });
    print(response);
    return response.fold((l) => l, (r) => r);
  }
}