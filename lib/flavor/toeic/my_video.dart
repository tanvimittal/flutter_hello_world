import '../../video.dart';

class MyVideo {
  static List<Video> getVideoList() {
    List<Video> videos = [];

    videos.add(Video(
        "New TOEIC 2021 full listening and reading practice test with answers - Mar 30",
        "https://www.youtube.com/watch?v=eV7_HhZbkmM",
        2021,
        "images/toeic.png"));
    videos.add(Video(
        "TOEIC Listening Test 2020 - Test 01",
        "https://www.youtube.com/watch?v=fQ5dRLiQxuY",
        2020,
        "images/toeic.png"));
    videos.add(Video(
        "TOEIC LISTENING PART 2 ONLY 041 WITH TRANSCRIPTS AND ANSWERS",
        "https://www.youtube.com/watch?v=T1AbGNpw4LQ",
        2018,
        "images/toeic.png"));
    videos.add(Video(
        "TOEIC TEST - TOEIC Listening Full Test 001",
        "https://www.youtube.com/watch?v=DXjS76vOqHc",
        2015,
        "images/toeic.png"));
    videos.add(Video(
        "TED (How to learn any language in six months)",
        "https://www.youtube.com/watch?v=d0yGdNEWdn0",
        2013,
        "images/toeic.png"));

    return videos;
  }
}
