import 'dart:io';

import 'package:http/http.dart' as http;

class ApiService {
  static Future<String> listarUsuarios() async {
    var response;

    try {
      response = await http
          .get(Uri(scheme: "https", host: "reqres.in", path: "api/users"))
          .timeout(Duration(seconds: 5));
    } catch (e) {
      print(e);
      if (e.toString().toLowerCase().contains('timeout'))
        throw SocketException("no internet");
      throw e;
    }
    // throw ApiResponseException(response.statusCode);

    if (response.statusCode != 200) {
      throw Exception(response.statusCode);
    }

    return response.body;
  }

  var body;
  static Future<String> entrar(body) async {
    final response = await http.post(
        Uri(scheme: "http", host: "reqres.in", path: "api/login"),
        body: body,
        headers: {"content-type": "application-json"});

    return response.body;
  }
}
