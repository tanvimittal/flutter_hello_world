import '../../config.dart';
import '../../video.dart';
import 'my_video.dart';

class MyConfig implements Config {
  @override
  int appId = 2;

  @override
  String appName = "TOEIC 動画リスト";

  @override
  List<Video> videoList = MyVideo.getVideoList();
}
