import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/common/images.dart';
import '../../../theme/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Align(
          alignment: AlignmentDirectional.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.appLogo,
                width: MediaQuery.of(context).size.width * 0.4,
                height: 112,
              ),
              const SizedBox(
                height: 0,
              ),
              Image.asset(Images.apptitle,
                  width: MediaQuery.of(context).size.width * 0.4),
            ],
          ),
        ),
        Obx(() => controller.showIndicator.value
            ? const Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 48),
                  child: CircularProgressIndicator(
                    color: AppColors.finemake_CE1E1E,
                  ),
                ),
              )
            : const SizedBox())
      ]),
    );
  }
}
