import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/core/middleware/app_middleware.dart';
import 'package:storefull/veiw/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:storefull/veiw/screen/auth/login.dart';
import 'package:storefull/veiw/screen/auth/forgetpassword/resetpassword.dart';
import 'package:storefull/veiw/screen/auth/signup.dart';
import 'package:storefull/veiw/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:storefull/veiw/screen/auth/signupcodeverify.dart';
import 'package:storefull/veiw/screen/auth/success_signup.dart';
import 'package:storefull/veiw/screen/auth/forgetpassword/verifycode.dart';
import 'package:storefull/veiw/screen/home.dart';
import 'package:storefull/veiw/screen/language.dart';
import 'package:storefull/veiw/screen/onboarding.dart';
// import 'package:storefull/veiw/test_view.dart';

List<GetPage<dynamic>>? routes = [
  // Auth
  GetPage(name: "/", page: () => const Language(), middlewares: [
    AppMiddleware(),
  ]),

  // GetPage(name: "/", page: () => const TestView()),

  // Auth Pages
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.signUpVerifyCode, page: () => const SignUpVerifyCode()),

  // Home Pages
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),

  // OnBoarding Pages
  GetPage(name: AppRoute.onboarding, page: () => const OnBoarding()),
];