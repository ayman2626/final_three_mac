import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class VendorRequestManger {
  Future<ApiResult> getAvailableRequests(String token) async {
    String url = "https://contractoor.herokuapp.com/api/requests/available";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> getTakenRequests(String token) async {
    String url = "https://contractoor.herokuapp.com/api/requests?status=taken";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> getDoneRquests(String token) async {
    String url =
        "https://contractoor.herokuapp.com/api/requests?status=completed&status=cancelled";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> getRequestByID(String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/requests/$ID";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> confirmRequest(
      Map bodyData, String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/requests/$ID";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url, token);

    return result;
  }
}
