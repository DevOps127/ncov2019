import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ncov/app/services/api.dart';

class ApiService {
  final API api;
  ApiService({this.api});

  Future<String> getAccessToken() async {
    final response = await http.post(
      api.tokenUri().toString(),
      headers: {'Authorization': 'Basic ${api.apiKey}'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final accessToken = data['access_token'];

      if (accessToken != null) {
        return accessToken;
      }
    }
    print('An Exception was occured');
    throw response;
  }
}
