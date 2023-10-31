import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'app/app.dart';
import 'util/flavors/flavors.dart';

void main() async {
  final config = FlavorSettings.dev();
  FlavorConfig(
    name: "Dev",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: {
      "baseUrl": config.baseURL,
      "favURL": config.favURL,
      "imageURL": config.imageURL,
      "requestUploadLink": config.requestUploadLink,
      "requestUploadFile": config.requestUploadFile,
      "requestCompanyLogo": config.requestCompanyLogo,
    },
  );
  runZonedGuarded<Future<void>>(() async {
    await initGetStorage();
    WidgetsFlutterBinding.ensureInitialized();
    // await FirebaseCrashlytics.instance
    //     .setCrashlyticsCollectionEnabled(!kDebugMode);
    // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    runApp(App());
  }, (error, stack) {
    // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}

Future initGetStorage() async {
  await GetStorage.init();
}
