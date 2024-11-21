import 'package:api_calling/modal/postmodal.dart';
import 'package:api_calling/provider/api_helper.dart';
import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier {
  List  postsList = [];
  Future<void> fetchData() async {
    ApiHelper apiHelper = ApiHelper();
    List posts = await apiHelper.fetchPostRecords();
    postsList = posts.map((e) =>PostModal.fromMap(e) ).toList();
    notifyListeners();
  }
  ApiProvider()
  {
    fetchData();
  }
}