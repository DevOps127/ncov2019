import 'package:flutter/foundation.dart';
import 'package:ncov/app/services/api_keys.dart';

class API {
  final String apiKey;
  API({@required this.apiKey});

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandboxkey);

  static final String host = 'https://ncov2019-admin.firebaseapp.com';

  Uri tokenUri() => Uri(
        scheme: 'htpps',
        host: host,
        path: 'token',
      );
}
