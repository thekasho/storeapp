import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:storefull/core/class/statusrequest.dart';
import 'package:storefull/core/functions/checknetwork.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String likurl, Map data) async {
    try {
      if (await checkNetwork()) {
        var response = await http.post(Uri.parse(likurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch(e) {
      print(e);
      return const Left(StatusRequest.serveException);
    }
  }
}
