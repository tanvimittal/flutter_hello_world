import 'video.dart';
import 'video_url_util.dart';

class VideoYouTube extends Video with VideoUrlUtil {
  final String videoId;

  @override
  String get url => makeYouTubeUrl(this.videoId);

  VideoYouTube({String title, this.videoId, int year, String image}) : super(title, null, year, image);
}