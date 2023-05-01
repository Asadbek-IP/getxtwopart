import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/api_service.dart';

class FinalMethodController extends GetxController {
  List posts = [].obs;
  RxBool isLoading = false.obs;

  getApi(BuildContext context) {
    isLoading.value = true;

    ApiService.getAllPost().then((value) {
      posts = value;
      isLoading.value = false;
    });
  }
}
