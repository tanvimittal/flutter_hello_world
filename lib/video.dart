class Video {
  String title;
  String url;
  int year;

  Video(this.title, this.url, this.year);

  static List<Video> getVideoList() {
    List<Video> videos = [];

    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80998772", 2000));
    videos.add(Video("ONE PIECE ねじまき島の冒険", "https://www.netflix.com/watch/70086565", 2001));
    videos.add(Video("ONE PIECE 珍獣島のチョッパー王国", "https://www.netflix.com/watch/70086565", 2002));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000));
    videos.add(Video("ONE PIECE FILM Z", "https://www.netflix.com/watch/80198443", 2012));
    videos.add(Video("ONE PIECE FILM GOLD", "https://www.netflix.com/watch/80163050", 2016));
    videos.add(Video("ONE PIECE STAMPEDE", "https://www.netflix.com/watch/80155769", 2019));

    return videos;
  }
}

