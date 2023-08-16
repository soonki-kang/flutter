// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.newAddressListResponse,
  });

  NewAddressListResponse newAddressListResponse;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    newAddressListResponse:
    NewAddressListResponse.fromJson(json["NewAddressListResponse"]),
  );

  Map<String, dynamic> toJson() => {
    "NewAddressListResponse": newAddressListResponse.toJson(),
  };
}

class NewAddressListResponse {
  NewAddressListResponse({
    required this.cmmMsgHeader,
    required this.newAddressListAreaCdSearchAll,
  });

  CmmMsgHeader cmmMsgHeader;
  List<NewAddressListAreaCdSearchAll> newAddressListAreaCdSearchAll;

  factory NewAddressListResponse.fromJson(Map<String, dynamic> json) =>
      NewAddressListResponse(
        cmmMsgHeader: CmmMsgHeader.fromJson(json["cmmMsgHeader"]),
        newAddressListAreaCdSearchAll: List<NewAddressListAreaCdSearchAll>.from(
            json["newAddressListAreaCdSearchAll"]
                .map((x) => NewAddressListAreaCdSearchAll.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
    "cmmMsgHeader": cmmMsgHeader.toJson(),
    "newAddressListAreaCdSearchAll": List<dynamic>.from(
        newAddressListAreaCdSearchAll.map((x) => x.toJson())),
  };
}

class CmmMsgHeader {
  CmmMsgHeader({
    required this.requestMsgId,
    required this.responseMsgId,
    required this.responseTime,  // 처리 시간(yyyymmdd:hhMMssmm)
    required this.successYn,    // 성공 여부 'Y'
    required this.returnCode,   // return code 정상 '00'
    required this.errMsg,       // 에라 메시지
    required this.totalCount,   // 전체 갯수
    required this.countPerPage, // page당 갯수
    required this.totalPage,    // 전체 페이지 수
    required this.currentPage,  // 현재 페이지
  });

  String? requestMsgId;
  String? responseMsgId;
  String? responseTime;
  String? successYn;
  String? returnCode;
  String? errMsg;
  String? totalCount;
  String? countPerPage;
  String? totalPage;
  String? currentPage;

  factory CmmMsgHeader.fromJson(Map<String, dynamic> json) => CmmMsgHeader(
    requestMsgId: json["requestMsgId"],
    responseMsgId: json["responseMsgId"],
    responseTime: json["responseTime"],
    successYn: json["successYN"],
    returnCode: json["returnCode"],
    errMsg: json["errMsg"],
    totalCount: json["totalCount"],
    countPerPage: json["countPerPage"],
    totalPage: json["totalPage"],
    currentPage: json["currentPage"],
  );

  Map<String, dynamic> toJson() => {
    "requestMsgId": requestMsgId,
    "responseMsgId": responseMsgId,
    "responseTime": responseTime,
    "successYN": successYn,
    "returnCode": returnCode,
    "errMsg": errMsg,
    "totalCount": totalCount,
    "countPerPage": countPerPage,
    "totalPage": totalPage,
    "currentPage": currentPage,
  };
}

class NewAddressListAreaCdSearchAll {
  NewAddressListAreaCdSearchAll({
    required this.zipNo,
    required this.lnmAdres,
    required this.rnAdres,
  });

  int zipNo;
  String lnmAdres;
  String rnAdres;

  factory NewAddressListAreaCdSearchAll.fromJson(Map<String, dynamic> json) =>
      NewAddressListAreaCdSearchAll(
        // zipNo: json["zipNo"],
        zipNo: int.parse(json["zipNo"]),
        lnmAdres: json["lnmAdres"],
        rnAdres: json["rnAdres"],
      );

  Map<String, dynamic> toJson() => {
    "zipNo": zipNo,
    "lnmAdres": lnmAdres,
    "rnAdres": rnAdres,
  };
}
