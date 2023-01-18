import 'dart:convert';
import 'dart:developer';

import 'package:api/model/userModel.dart';
import 'package:http/http.dart' as http;

class Apiservice {
  Future<dynamic> fetchdata() async {
    List<UserModel> encode=[];
    var response =
        await http.get(Uri.parse("https://script.google.com/macros/s/AKfycbxbatlZbbxGL9ZzlM4qzfNnE-hevwSiWh25LcZVGeD4c3rYgMi3qTZ_76GcGytOl_Se/exec"));
    if (response.statusCode == 200) {
      List decode = jsonDecode(response.body);
      // log(decode.toString());
      decode.map((e) {
        Map<String,dynamic> m=e;
        var obj=UserModel.fromJson(m);
        encode.add(obj);
        //  return decode ;
      }).toList();
       return encode;  
    } else {
      log("error in Api");
    }
  }
}
