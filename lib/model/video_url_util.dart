mixin VideoUrlUtil {
  String makeYouTubeUrl(String videoId) => "https://www.youtube.com/watch?v=$videoId";
  String makeNetflixUrl(String videoId) => "https://www.netflix.com/watch/$videoId";
}