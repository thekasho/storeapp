import 'package:flutter/material.dart';
import 'package:storefull/core/class/statusrequest.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);
  final StatusRequest statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading ?
    const Center(child: Text("loading", style: TextStyle(fontSize: 25.0))) :
    statusRequest == StatusRequest.offlineFailure ?
    const Center(child: Text("Offline Failure", style: TextStyle(fontSize: 25.0))) :
    statusRequest == StatusRequest.serverFailure ?
    const Center(child: Text("Server Failure", style: TextStyle(fontSize: 25.0))) :
    statusRequest == StatusRequest.failure ?
    const Center(child: Text("No Data", style: TextStyle(fontSize: 25.0))) :
    widget;
  }
}
