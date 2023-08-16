import 'dart:async';
import 'dart:convert';

import 'package:alltest/globals/comm/zipcode_search.dart';
import 'package:alltest/models/zipcode_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class PostCodeView extends StatefulWidget {
  const PostCodeView({Key? key}) : super(key: key);

  @override
  State<PostCodeView> createState() => _PostCodeViewState();
}

class _PostCodeViewState extends State<PostCodeView> {
  // static const url = 'http://openapi.epost.go.kr';
  // static const urlpath = '/postal/retrieveNewAdressAreaCdSearchAllService/retrieveNewAdressAreaCdSearchAllService/getNewAddressListAreaCdSearchAll';
  // Uri uri = Uri.parse(url + urlpath);
  Uri uri = Uri.parse(
      'http://openapi.epost.go.kr/postal/retrieveNewAdressAreaCdSearchAllService/retrieveNewAdressAreaCdSearchAllService/getNewAddressListAreaCdSearchAll');
  Map<String, String> myParams = {
    'serviceKey':
        'nbLjVlRrFK2PabVu0RcrCuXEt4Ssh3ljgrWNSZ0CCSGs4uoPEuduWPjLqVui5kdNWH4MDZasyLWU6e9kz7h0jA==',
    'countPerPage': '50'
    // 'currentPage':  ''
  };

  Future<String> getData() async {
    final Xml2Json xml2Json = Xml2Json();
    myParams.addAll({
      'srchwrd': '동부곡로',
      // 'countPerPage': '50'
    });

    uri = uri.replace(queryParameters: myParams);
    print('uri = $uri');

    http.Response response = await http.get(uri);

    print(response.body);
    xml2Json.parse(response.body);
    Map<String, dynamic> responseMap = jsonDecode(
        // xml2Json.toGData()
        // xml2Json.toBadgerfish()
        // xml2Json.toParker()
        xml2Json.toParkerWithAttrs()
    );
    // var jsonResponse = Xml2Json().toGData();
    print('--1----------------------------------------------');
    print( responseMap);
    print('--2----------------------------------------------');
    print(responseMap['NewAddressListResponse']);
    print('--3----------------------------------------------');
    print(responseMap['NewAddressListResponse']['newAddressListAreaCdSearchAll'][0]['lnmAdres']);

    print('=================================================');
    var zipbody = Welcome.fromJson(responseMap);
    print(zipbody.runtimeType);
    print(zipbody.newAddressListResponse.cmmMsgHeader.countPerPage);
    print(zipbody.newAddressListResponse.newAddressListAreaCdSearchAll[0].lnmAdres);
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext  context) => ZipCodeSearch()),
          child: const Text('우편번호 검색'),
        ),
      ),
    );
  }
}
