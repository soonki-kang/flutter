import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class JSONGet extends StatefulWidget {
  const JSONGet({Key? key}) : super(key: key);

  @override
  State<JSONGet> createState() => _JSONGetState();
}

class _JSONGetState extends State<JSONGet> {
  Uri uri = Uri.parse('http://jsonplaceholder.typicode.com/posts');
  Future<String> getData() async {
    final response = await http.get(uri);
    // http.Response response = await http.get(uri);
    print(response.body);
    List data = jsonDecode(response.body);
    print("######");
    print(data[1]['title']);
    print(data[1]['body']);
    return data.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: getData,
          child: Text(
            'Get data'
          ),
        ),
      ),
    );
  }
}
