import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class VendorOffersManger {

  Future<ApiResult> getAllOffers(String token) async {
    String url = "https://contractoor.herokuapp.com/api/offers";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> deleteOfferByID(String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/offers/$ID";
    Networking net = new Networking();

    ApiResult result = await net.deleteData(url, token);

    return result;
  }

  Future<ApiResult> getOffersByID(String token, String ID) async {
    String url = "https://contractoor.herokuapp.com/api/offers/$ID";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }

  Future<ApiResult> createOffer(
      Map bodyData, String token, String requestID) async {
    String url =
        "https://contractoor.herokuapp.com/api/requestsrequests/$requestID/offers";
    Networking net = new Networking();

    ApiResult result = await net.postData(bodyData, url, token);

    return result;
  }
}
