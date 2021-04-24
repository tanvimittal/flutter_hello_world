import 'package:sprintf/sprintf.dart';

import '../../model/video.dart';
import '../../model/video_you_tube.dart';

class VideoToeic {
  static List<Video> getVideoList() {
    // TOIEC Listening Test にある ID のリスト (index + 1 が回数になる)
    // https://www.youtube.com/channel/UCALZsVSdq0v-oTVPYKvAcSA
    List<String> videoIds = [
      "fQ5dRLiQxuY",
      "mVSGwPjE1zo",
      "M8D-VWFc9Qg",
      "rMYjsHvn1Rk",
      "5q7xcn6vK2E",
      "I76Wrclls-0",
      "LgRE7JGgcmE",
      "aUYUu_L_hls",
      "QlwsP6Gcepk",
      "iLwuUCC6UDs",
    ];

    // Transcript 付き
    List<String> videoIdsWithTranscript = [
      "q-nD-qTpi0E",
      "s0EfWTA4AhQ",
      "mITc6D7bu30",
      "BsSuTC0pSZc",
      "riLPjHuI_8o",
      "lnamp0emHAk",
      "622jSMXgVX0",
      "oWX-eUAgAV0",
      "6ax0NUoittk",
      "cTXB1xsVAZY",
    ];

    List<Video> videos = [];

    for (int i = 0; i < videoIds.length; i++) {
      String number = sprintf("%02i", [i + 1]);
      videos.add(createVideoToeic(
          title: "TOEIC Listening Test 2020 - Test $number",
          videoId: videoIds[i]));
      videos.add(createVideoToeic(
          title: "Transcripts for Test $number",
          videoId: videoIdsWithTranscript[i]));
    }

    return videos;
  }

  // 無理やり Named parameters を使ってみる
  static Video createVideoToeic({String title, String videoId, String image = "images/toeic.png"}) {
    return createVideo(title, videoId, image);
  }

  // 無理やり Optional parameters を使ってみる
  static Video createVideo(String title, String videoId, String image, [int year]) =>
    VideoYouTube(title: title, videoId: videoId, year: year, image: image);
}
