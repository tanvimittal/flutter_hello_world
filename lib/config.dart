import 'package:flutter/material.dart';

import 'model/video.dart';

abstract class Config {
  static Config config;

  int appId;
  String appName;
  MaterialColor primarySwatch = Colors.indigo;

  List<Video> videoList;
}