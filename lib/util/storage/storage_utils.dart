import 'package:get_storage/get_storage.dart';

class Storage {
  Storage._privateConstructor();

  static final _box = GetStorage();

  static bool isFirstLaunch() => _box.read(StorageKeys.IS_FIRST_LAUNCH) ?? true;
  static void setFirstLaunch(bool value) =>
      _box.write(StorageKeys.IS_FIRST_LAUNCH, value);

  //--------------deviceID-------------//
  static setDeviceId(String id) => _box.write(StorageKeys.DEVICE_ID, id);
  static String getDeviceId() => _box.read(StorageKeys.DEVICE_ID);
  static bool isDeviceIdExists() => _box.read(StorageKeys.DEVICE_ID) != null;

  //--------------Appversion-------------//
  static setAppver(String ver) => _box.write(StorageKeys.APP_VER, ver);
  static String getAppver() => _box.read(StorageKeys.APP_VER);
}

class StorageKeys {
  StorageKeys._privateConstructor();

  // ignore: constant_identifier_names
  static const IS_FIRST_LAUNCH = 'is_first_launch';
  static const DEVICE_ID = 'device_id';
  static const APP_VER = 'app_version';
}
