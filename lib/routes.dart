import 'package:flutter/cupertino.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/veiw/screen/auth/login.dart';
import 'package:storefull/veiw/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onboarding: (context) => const OnBoarding(),
};