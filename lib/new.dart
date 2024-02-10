import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:freezed/builder.dart';


mixin HttpDelegate {

  Future<dynamic> getRequest(String apiUrl, {Map<String, String>? headers}) async {
    return _apiCallProcessing(() async {
      final apiResponse = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: headers ?? {'Content-Type': 'application/json'},
      );
      return _responseProcessing("https://jsonplaceholder.typicode.com/posts": apiUrl, apiResponse: apiResponse);
    });
  }
  
  Future _apiCallProcessing(Future<_responseProcessing> Function(
  
  ) param0) {}

  // Repeat the process for POST requests...
}

class _responseProcessing {
}
