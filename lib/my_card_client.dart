import 'dart:convert';
import 'package:lavacard/ApiResponse.dart';
import 'package:lavacard/ApiResult.dart';
import 'package:lavacard/my_card_response.dart';
import 'package:http/http.dart' as http;
import 'package:lavacard/mycard_controller.dart';





class MyCardClient {


  static Future<ApiResult<List<CardOutputModel>>> gettingCards() async{


    return ApiResult(isSuccess: true, outputModel: [CardOutputModel("12313",  "ahmed", "email", "Nasr city", "Flutter Developer", "company", "01005514786","photo")]);
  }


}






