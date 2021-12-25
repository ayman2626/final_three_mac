import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class PasswordManger{

  
  Future<ApiResult> updatePassword(Map bodyData, String token) async {
    String url = "https://contractoor.herokuapp.com/api/auth/updatepassword";
    Networking net = new Networking();

    ApiResult result = await net.patchData(bodyData, url, token);

    return result;
  }

  /// reset token is sent to phone number
  Future<ApiResult> forgotPassword(Map bodyData) async {
    String url = "https://contractoor.herokuapp.com/api/auth/forgotpassword";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url);

    return result;
  }

  Future<ApiResult> verifyResetToken(Map bodyData) async {
    String url = "https://contractoor.herokuapp.com/api/auth/verifytoken";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url);

    return result;
  }

  Future<ApiResult> resetPassword(Map bodyData, String userID) async {
    String url = "https://contractoor.herokuapp.com/api/auth/resetpassword/$userID";
    Networking net = new Networking();

    ApiResult result = await net.patchData(bodyData, url);

    return result;
  }
}