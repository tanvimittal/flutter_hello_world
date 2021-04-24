class Video {
  final String title;
  final String _url;
  final int year;
  final String image;

  String get url => _url;

  Video(this.title, this._url, this.year, this.image);
}

