import 'package:flutter/foundation.dart';
import 'package:ncov/app/services/api_keys.dart';

enum Endpoint {
  cases,
  casesSuspected,
  casesConfirmed,
  deaths,
  recoverd,
}

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

  Uri endpointUri(Endpoint endpoint) => Uri(
        scheme: 'https',
        host: host,
        path: _path[endpoint],
      );

  static Map<Endpoint, String> _path = {
    Endpoint.cases: 'cases',
    Endpoint.casesSuspected: 'casesSuspected',
    Endpoint.casesConfirmed: 'casesConfirmed',
    Endpoint.deaths: 'deaths',
    Endpoint.recoverd: 'recoverd',
  };
}
