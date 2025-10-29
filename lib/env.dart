import 'dart:convert';

import 'package:flutter/material.dart';

class Env {
  static String name = '';
  static String baseUrl = '';
  static String baseUrlGraphQl = '';
  static bool isPos = true;

  static void init() {
    name = const String.fromEnvironment('name', defaultValue: 'developer');
    baseUrl = const String.fromEnvironment('baseUrl', defaultValue: 'http://localhost');
    baseUrlGraphQl = const String.fromEnvironment('baseUrlGraphQl', defaultValue: 'http://localhost:3000');
    isPos = bool.fromEnvironment('isPos', defaultValue: true);
  }

  static Future<void> changeEnv(BuildContext context, String newEnv) async {
    var file = await DefaultAssetBundle.of(context).loadString('envs/$newEnv.json');
    debugPrint(file);
    var json = jsonDecode(file);
    if (json['name'] == null || json['baseUrl'] == null || json['baseUrlGraphQl'] == null) {
      throw Exception('O arquivo $newEnv.json está incompleto!');
    }
    name = json['name'];
    baseUrl = json['baseUrl'];
    baseUrlGraphQl = json['baseUrlGraphQl'];
  }

  static String toStr() {
    return "Name: $name, baseUrl: $baseUrl, baseUrlGraphQl: $baseUrlGraphQl";
  }
}
