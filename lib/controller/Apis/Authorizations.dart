import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';


class Authorizations{

  Future<ApiResult> registerNewUser(Map bodyData) async {
    String url = "https://contractoor.herokuapp.com/api/auth/register";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url);
   

    return result;
  }

  Future<ApiResult> activateAccount(Map bodyData) async {
    String url = "https://contractoor.herokuapp.com/api/auth/activate";
    Networking net = new Networking();

    ApiResult result = await net.patchData(bodyData, url);

    return result;
  }

  Future<ApiResult> resendToken(Map bodyData) async {
    String url = "https://contractoor.herokuapp.com/api/auth/resendtoken";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url);

    return result;
  }

  Future<ApiResult> loginUser(Map bodyData) async {
    String url = "https://contractoor.herokuapp.com/api/auth/login";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url);

    return result;
  }

  Future<ApiResult> getUser(String token) async {
    String url = "https://contractoor.herokuapp.com/api/auth";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

}