import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class VerifyCodeResetPasswordData {
  Crud crud;
  VerifyCodeResetPasswordData(this.crud);

  postdata(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifyCodeResetPassword, {
      "email" : email,
      "verifycode" : verifycode,
    });
    print(response);
    return response.fold((l) => l, (r) => r);
  }
}