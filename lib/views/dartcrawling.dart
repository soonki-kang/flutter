import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

class DartCrawling {
  void crawling () async {
    var url = Uri.parse('https://m.naver.com/include/grid/panel_DATA.shtml');
    http.Response response = await http.get(url);
    try {
      if (response.statusCode != 200) {
        print('failed $url');
      }
      } catch (e) {
        print('failed');
        exit(0);
    }

    Document document = parser.parse(response.body);
    List<Element> keywordElements = document.querySelectorAll('.cd_list cd_item');
    List<Map<String, dynamic>> keywords = [];
    for (var element in keywordElements) {
      Element? link = element.querySelector('a');
      Element? rank = element.querySelector('.cd_num');
      Element? title = element.querySelector('.cd_tit');

      keywords.add({
        'rank': rank?.text,
        'title': title?.text,
        'url': link?.attributes['href']
      });
    }
    print(keywords);
  }
}