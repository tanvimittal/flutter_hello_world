import '../../video.dart';

class VideoToeic {
  static List<Video> getVideoList() {
    List<Video> videos = [];

    videos.add(createYouTubeVideo(
        title: "New TOEIC 2021 full listening and reading practice test with answers - Mar 30",
        id: "eV7_HhZbkmM"));
    videos.add(createYouTubeVideo(
        title: "TOEIC Listening Test 2020 - Test 01",
        id: "fQ5dRLiQxuY"));
    videos.add(createYouTubeVideo(
        title: "TOEIC LISTENING PART 2 ONLY 041 WITH TRANSCRIPTS AND ANSWERS",
        id: "T1AbGNpw4LQ"));
    videos.add(createYouTubeVideo(
        title: "TOEIC TEST - TOEIC Listening Full Test 001",
        id: "DXjS76vOqHc"));
    videos.add(createYouTubeVideo(
        title: "TED (How to learn any language in six months)",
        id: "d0yGdNEWdn0"));

    return videos;
  }

  // 無理やり Named parameters を使ってみる
  static Video createYouTubeVideo({String title, String id, String image = "images/toeic.png"}) {
    final url = "https://www.youtube.com/watch?v=$id";

    return createVideo(title, url, image);
  }

  // 無理やり Optional parameters を使ってみる
  static Video createVideo(String title, String url, String image, [int year]) {
    return Video(title, url, year, image);
  }
}
