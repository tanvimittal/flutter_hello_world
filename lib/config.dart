import 'video.dart';

abstract class Config {
  static Config config;

  int appId;
  String appName;

  List<Video> videoList;
}