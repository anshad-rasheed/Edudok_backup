import 'dart:convert';

import 'package:flutter/material.dart';

class Utils {
  static Future<void> parseJsonFrom(BuildContext context, String path) async {
    String data = await DefaultAssetBundle.of(context).loadString(path);
    return json.decode(data);
  }
}
