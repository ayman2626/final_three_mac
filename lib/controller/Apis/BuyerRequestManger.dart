import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class BuyerRequestManger {
  Future<ApiResult> getMyRequests(String token) async {
    String url = "https://contractoor.herokuapp.com/api/requests?status=available";
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
    String url = "https://contractoor.herokuapp.com/api/requests?status=completed&status=cancelled";
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

  Future<ApiResult> createRequest(Map bodyData, String token) async {
    String url = "https://contractoor.herokuapp.com/api/requests";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url, token);

    return result;
  }

  Future<ApiResult> deleteRequest(String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/requests/$ID";
    Networking net = new Networking();

    ApiResult result = await net.deleteData(url, token);

    return result;
  }

  Future<ApiResult> rateRequest(String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/requests/$ID";
    Networking net = new Networking();

    ApiResult result = await net.patchData(url, token);

    return result;
  }
}
