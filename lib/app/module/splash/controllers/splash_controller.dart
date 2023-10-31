import 'dart:async';

import 'package:finemake_estimate/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../../base/base_controller.dart';

class SplashController extends BaseController {
  var showIndicator = false.obs;
  @override
  void onInit() async {
    super.onInit();
    Timer(const Duration(seconds: 5), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
