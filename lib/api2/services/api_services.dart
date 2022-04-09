import 'dart:convert';

import 'package:http/http.dart'as http;

import '../model/model11.dart';
class ApiServices{

  final url="https://jsonplaceholder.typicode.com/users";

  Future getData()async{
    final response=await http.get(Uri.parse("$url"));

    if(response.statusCode==200){
      return jsonDecode(response.body.toString());
    }
    else{
      return Exception("Failed");
    }
  }
}