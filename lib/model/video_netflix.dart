import 'video.dart';
import 'video_url_util.dart';

class VideoNetflix extends Video with VideoUrlUtil {
  final String videoId;

  @override
  String get url => makeNetflixUrl(this.videoId);

  VideoNetflix({String title, this.videoId, int year, String image}) : super(title, null, year, image);
}