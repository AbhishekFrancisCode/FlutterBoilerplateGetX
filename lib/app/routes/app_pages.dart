import 'package:get/get.dart';

import '../module/home/bindings/home_binding.dart';
import '../module/home/views/home_view.dart';
import '../module/splash/bindings/splash_binding.dart';
import '../module/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
