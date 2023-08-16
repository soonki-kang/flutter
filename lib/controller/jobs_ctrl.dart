import 'package:alltest/views/dartcrawling.dart';
import 'package:flutter/material.dart';

import '../views/elevatebtn.dart';
import '../views/dartcrawling.dart';
import '../views/jsonget.dart';
import '../views/postcode_view.dart';

class Jobs {
  static const List<Map<String, dynamic>> job = [
    {
      'title': 'Button grident and sized',
    'hint': 'Focus node의 사용법',
      'wgt': ElevateBtn()
    },
    {
      'title': 'Crawling',
      'hint': '보완 필요',
      // 'wgt': DartCrawling()
      'wgt': ElevateBtn()
    },
    {
      'title': 'REST Api',
      'hint': 'https://fenderist.tistory.com/129',
      'wgt': JSONGet(),
    },
    {
      'title': '우편번호 조회',
      'hint': '무현이 잘 놀고 있다.',
      'wgt': PostCodeView()
    },
  ];
}