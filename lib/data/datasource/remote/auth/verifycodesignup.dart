import 'package:storefull/core/class/crud.dart';
import 'package:storefull/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);

  postdata(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifyCode, {
      "email" : email,
      "verifycode" : verifycode,
    });
    print(response);
    return response.fold((l) => l, (r) => r);
  }
}