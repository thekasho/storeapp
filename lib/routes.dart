import 'package:flutter/cupertino.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/veiw/screen/auth/forgetpassword.dart';
import 'package:storefull/veiw/screen/auth/login.dart';
import 'package:storefull/veiw/screen/auth/resetpassword.dart';
import 'package:storefull/veiw/screen/auth/signup.dart';
import 'package:storefull/veiw/screen/auth/success_resetpassword.dart';
import 'package:storefull/veiw/screen/auth/success_signup.dart';
import 'package:storefull/veiw/screen/auth/verifycode.dart';
import 'package:storefull/veiw/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signup: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),

  // OnBoarding
  AppRoute.onboarding: (context) => const OnBoarding(),
};