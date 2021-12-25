import 'dart:core';

import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class CarsManger{

   Future<ApiResult> getCars(String token) async {
    String url = "https://contractoor.herokuapp.com/api/cars";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);

    return result;
  }
}