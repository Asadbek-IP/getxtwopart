import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../services/api_service.dart';

class HomeController extends GetxController {
  List posts = [];
  bool isLoading = false;

  getApi(BuildContext context) {
    isLoading = true;
    update();
    ApiService.getAllPost().then((value) {
      posts = value;
      isLoading = false;
      update();
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
}
