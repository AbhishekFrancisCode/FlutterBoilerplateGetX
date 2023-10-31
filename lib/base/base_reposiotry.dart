import 'package:get/get.dart';
import '../app/data/services/network_requester.dart';

class BaseRepository {
  NetworkRequester get controller => GetInstance().find<NetworkRequester>();

  // String get authToken => Strings.authString(Storage.getUser().token);

  // String get refreshToken => Strings.authString(Storage.getUser().refreshToken);

  // String get authToken =>
  //     Strings.authString(Storage.getUser().tokens!.accessToken);

  // String get refreshToken =>
  //     Strings.authString(Storage.getUser().tokens!.refreshToken);
}
