import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class ReportManger {
  Future<ApiResult> createReport(Map bodyData, String token) async {
    String url = "https://contractoor.herokuapp.com/api/reports";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url, token);

    return result;
  }
}
