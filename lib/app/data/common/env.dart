import 'package:flutter_flavor/flutter_flavor.dart';

class Env {
  Env._privateConstructor();
  static FlavorConfig configUrl = FlavorConfig.instance;

  static const title = "Finemake";

  static String baseURL = configUrl.variables["baseUrl"];

  static String requestCompanyLogo = configUrl.variables["requestCompanyLogo"];
}
