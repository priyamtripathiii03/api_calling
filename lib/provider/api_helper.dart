import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper {
       final String api='https://jsonplaceholder.typicode.com/posts';
       Future<List> fetchPostRecords()
       async {
         Uri url=Uri.parse(api);
         Response response=await http.get(url);
         if(response.statusCode==200){
           String data=response.body;
           List<dynamic> list=json.decode(data);
           return list;

         }
         return [];
  }
}