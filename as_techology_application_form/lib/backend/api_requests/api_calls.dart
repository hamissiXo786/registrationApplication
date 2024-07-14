import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? sender = 'null',
    String? recepient = 'null',
    String? studentID = 'null',
    String? date = 'null',
    String? studentName = 'null',
    String? courseSelection = 'null',
    String? studentNo = 'null',
  }) async {
    final ffApiRequestBody = '''
{
  "sender": {
    "name": "Africa School of Technology",
    "email": "$sender"
  },
  "to": [
    {
      "email": "$recepient",
      "name": "$studentName"
    }
  ],
  "subject": "Thank You for Your Application to Africa School of Technology",
  "htmlContent": "<html><head></head><body><p>$date</p><p>Student Name: $studentName</p><p>Student Number : $studentNo </p><p>Dear $studentName,</p><p>We hope this email finds you well. On behalf of the Africa School of Technology, we would like to express our sincere appreciation for submitting your application to our esteemed institution. Your interest in joining the Africa School of Technology is truly valued, and we are currently in the process of vetting and carefully reviewing your application. Our admissions team is dedicated to ensuring that each application is thoroughly assessed to identify the best candidates for our programs. We understand the anticipation that comes with the application process, and we want to assure you that your application is receiving the attention it deserves. <p/> <p> Please be patient with us as we work diligently to evaluate all applications. Rest assured that we will provide you with an update on the status of your application as soon as the vetting process is completed. Our goal is to ensure a fair and comprehensive review, and we appreciate your understanding in this regard. If you have any questions or need further information in the meantime, please feel free to reach out to our admissions team at info@astechnology.co.za. <p/><p> Thank you once again for choosing the Africa School of Technology. We look forward to the possibility of welcoming you to our community.</p><p>Best regards,</p></body></html>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'https://api.brevo.com/v3/smtp/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key':
            '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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendAcceptanceCall {
  static Future<ApiCallResponse> call({
    String? sender = 'null',
    String? recepient = 'null',
    String? studentID = 'null',
    String? date = 'null',
    String? studentName = 'null',
    String? courseSelection = 'null',
    String? studentNo = 'null',
  }) async {
    final ffApiRequestBody = '''
{
  "sender": {
    "name": "Africa School of Technology",
    "email": "$sender"
  },
  "to": [
    {
      "email": "$recepient",
      "name": "$studentName"
    }
  ],
  "subject": "Acceptance Letter - Africa School of Technology",
  "htmlContent": "<html><head></head><body><p>$date</p><p>Student Name: $studentName</p><p>Student Number : $studentNo</p><p>Dear $studentName,</p><p>Acceptance of Application</p><p>We are pleased to inform you that your application for admission to the $courseSelection program at Africa School of Technology has been successful. Congratulations on this significant achievement!</p><p>As a leading institution in Information Communication Technology programs in Sub-Saharan Africa, we welcome you to our esteemed academic community. Our commitment to fostering innovation and providing opportunities for all is reflected in our cutting-edge curriculum, aligned with global demands and best teaching practices.</p><p>Your acceptance marks a noteworthy step in your academic and professional journey. We are dedicated to supporting your pursuit of excellence and educational aspirations.</p><p>To complete your registration, please proceed with the payment of the registration fee outlined in the provided pro forma invoice. After making the payment, kindly email the confirmation to our accounts department at accounts@astechnology.co.za or to your dedicated student consultant.</p><p>We look forward to guiding you through a successful academic journey at Africa School of Technology. Should you have any inquiries or require assistance, please feel free to contact us.</p><p>Warm regards,</p></body></html>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendAcceptance',
      apiUrl: 'https://api.brevo.com/v3/smtp/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key':
            '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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendStatusUpdateCall {
  static Future<ApiCallResponse> call({
    String? sender = 'null',
    String? recepient = 'null',
    String? studentID = 'null',
    String? date = 'null',
    String? studentName = 'null',
    String? courseSelection = 'null',
    String? agentName = 'null',
    String? studentNo = 'null',
  }) async {
    final ffApiRequestBody = '''
{
  "sender": {
    "name": "Africa School of Technology",
    "email": "$sender"
  },
  "to": [
    {
      "email": "$recepient",
      "name": "$studentName"
    }
  ],
  "subject": "Status Update - Africa School of Technology",
  "htmlContent": "<!DOCTYPE html><html lang=\\"en\\"><head><meta charset=\\"UTF-8\\"><meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge\\"><meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1.0\\"><title>Africa School of Technology Application Status</title></head><body style=\\"font-family: Arial, sans-serif; margin: 0; padding: 0;\\"><p style=\\"text-align: center;\\">$date</p><p>Student Name: $studentName</p><p>Dear $studentName,<p>Student Number : $studentNo</p></p><p>Application Status Update: Africa School of Technology</p><p>We appreciate your interest in the Africa School of Technology and thank you for submitting your application.</p><p>I am writing to inform you that your application is currently being processed. The admissions committee is diligently reviewing each application to ensure a fair and thorough assessment.</p><p>Please be patient as we carefully consider all aspects of your application. We understand the anticipation that comes with this waiting period and assure you that we are working diligently to complete the review process as soon as possible.</p><p>We will notify you of the outcome of your application within the next 3 days. In the meantime, should you have any questions or need further information, feel free to reach out to our admissions office at info@astechnology.co.za .</p><p>We appreciate your patience and understanding as we work through this process. We look forward to the possibility of welcoming you to the Africa School of Technology and wish you the best of luck in the meantime.</p><p>Thank you for choosing Africa School of Technology.</p><p>Best regards,</p><p>Africa School of Technology</p><p>Contact Information: Johannesburg (+27) 10- 110- 1980</p><p>Contact Information: Durban (+27) 31- 110 - 0065</p></body></html>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendStatusUpdate',
      apiUrl: 'https://api.brevo.com/v3/smtp/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key':
            '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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
