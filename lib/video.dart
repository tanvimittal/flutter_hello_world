class Video {
  String title;
  String url;
  int year;
  String image;

  Video(this.title, this.url, this.year, this.image);

  static List<Video> getVideoList() {
    List<Video> videos = [];

    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80998772", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE ねじまき島の冒険", "https://www.netflix.com/watch/70086565", 2001, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE 珍獣島のチョッパー王国", "https://www.netflix.com/watch/70086565", 2002, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE", "https://www.netflix.com/watch/80047616", 2000, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE FILM Z", "https://www.netflix.com/watch/80198443", 2012, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE FILM GOLD", "https://www.netflix.com/watch/80163050", 2016, "images/OnePiece.jpg"));
    videos.add(Video("ONE PIECE STAMPEDE", "https://www.netflix.com/watch/80155769", 2019, "images/OnePiece.jpg"));

    return videos;
  }
}

