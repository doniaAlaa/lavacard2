import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:lavacard/identitymodel.dart';
class Services {
   static var client = http.Client();
static Future<Identity?> fetchClints() async{
   var response = await client.get(Uri.parse('https://mocki.io/v1/9ccc43ad-cc52-4620-bb4c-f4856ac1a964'));
   if(response.statusCode ==200){
      var jsonString = response.body;
      return welcomeFromJson(jsonString);

   }else{
      return null;
   }
}
}