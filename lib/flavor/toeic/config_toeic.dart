import '../../config.dart';
import '../../video.dart';
import 'video_toeic.dart';

class ConfigToeic implements Config {
  @override
  int appId = 2;

  @override
  String appName = "TOEIC リスニング動画リスト";

  @override
  List<Video> videoList = VideoToeic.getVideoList();
}
