import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:storefull/core/class/statusrequest.dart';
import 'package:storefull/core/constant/imageasset.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);
  final StatusRequest statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading ?
    Center(child: Lottie.asset(AppImageAsset.loading, width: 250.0, height: 250.0)) :
    statusRequest == StatusRequest.offlineFailure ?
    Center(child: Lottie.asset(AppImageAsset.offline, width: 250.0, height: 250.0)) :
    statusRequest == StatusRequest.serverFailure ?
    Center(child: Lottie.asset(AppImageAsset.server, width: 250.0, height: 250.0)) :
    statusRequest == StatusRequest.failure ?
    Center(child: Lottie.asset(AppImageAsset.nodata, width: 250.0, height: 250.0)) :
    widget;
  }
}
