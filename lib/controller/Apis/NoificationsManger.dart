import 'dart:core';
import 'package:final_three_mac/controller/Networking.dart';

import '../../constants.dart';

class NotificationsManger{


  Future <ApiResult> notificationsPoll(String token) async{

    String url = "https://contractoor.herokuapp.com/api/notifications/poll";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);
   
    return result;
  }

  
  Future <ApiResult> getNotiications(String token) async{

    String url = "https://contractoor.herokuapp.com/api/notifications";
    Networking net = new Networking();

    ApiResult result = await net.getData(url, token);
   
    return result;
  }
}