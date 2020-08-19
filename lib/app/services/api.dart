import 'package:flutter/foundation.dart';
import 'package:ncov/app/services/api_keys.dart';

class API {
  final String apiKey;
  API({@required this.apiKey});

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandboxkey);

  static final String host = 'ncov2019-admin.firebaseapp.com';

  Uri tokenUri() => Uri(
        scheme: 'https',
        host: host,
        path: 'token',
      );
}
