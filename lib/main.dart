import 'package:flutter/material.dart';

import 'application.dart';
import 'video.dart';
import 'config.dart';

void main() {
  Config.config = MainConfig();

  runApp(Application());
}

class MainConfig implements Config {
  @override
  int appId = 1;

  @override
  String appName = "ワンピース映画リスト";

  @override
  List<Video> videoList = Video.getVideoList();
}