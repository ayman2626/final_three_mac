import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class BuyerOffersManger {
  Future<ApiResult> getRequestoffers(String token, String requestID) async {
    String url = "https://contractoor.herokuapp.com/api/requests/$requestID/offers";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> getOffersByID(String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/offers/$ID";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> acceptOfferByID( String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/offers/$ID";
    Networking net = new Networking();

    ApiResult result = await net.patchData(url, token);

    return result;
  }
}
