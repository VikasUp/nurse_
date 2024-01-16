import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show MethodChannel, rootBundle;

import 'package:stock_management/util/logger.dart';

const kAlert = "Alert";
const kStart = "Start";
const kOk = "Ok";
const kTest = "Test";
const kCancel = "Cancel";
const kHintText = "hint text";

class Utilities {
  static Future<String> parseStringFromAssets(String assetsPath) {
    log.info('--- Parse json from: $assetsPath');
    return rootBundle.loadString(assetsPath);
  }

  static Future<Map<String, dynamic>> parseJsonFromAssets(String assetsPath) {
    log.info('--- Parse json from: $assetsPath');
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }

  static Future<List<dynamic>> parseJsonArrayFromAssets(String assetsPath) {
    log.info('--- Parse json from: $assetsPath');
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }

  ///Enum to String function
  static String enumToString(Object o) => describeEnum(o);

  ///String to Enum function
  static T enumFromString<T>(String key, List<T> values) => values.firstWhere(
        (v) => key == enumToString(v!),
      );
}
