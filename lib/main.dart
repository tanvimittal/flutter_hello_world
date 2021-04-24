import 'package:flutter/material.dart';

import 'application.dart';
import 'model/video.dart';
import 'model/video_netflix.dart';
import 'config.dart';

void main() {
  Config.config = MainConfig();

  runApp(Application());
}

class MainConfig implements Config {
  @override
  int appId = 1;

  @override
  String appName = "ワンピース映画リスト";

  @override
  List<Video> videoList = getVideoList();
}

List<Video> getVideoList() {
  List<Video> videos = [];

  videos.add(VideoNetflix(
      title: "ONE PIECE",
      videoId: "80998772",
      year: 2000,
      image: "images/2000.jpg"));
  videos.add(Video(
      "ONE PIECE ねじまき島の冒険",
      "https://www.netflix.com/watch/80998773",
      2001,
      "images/2001.jpg"));
  videos.add(Video(
      "ONE PIECE 珍獣島のチョッパー王国",
      "https://www.netflix.com/watch/80998774",
      2002,
      "images/2002.jpg"));
  videos.add(Video(
      "ONE PIECE THE MOVIE デッドエンドの冒険",
      "https://www.netflix.com/watch/80998775",
      2003,
      "images/2003.jpg"));
  videos.add(Video(
      "ONE PIECE 呪われた聖剣",
      "https://www.netflix.com/watch/80998776",
      2004,
      "images/2004.jpg"));
  videos.add(Video(
      "ONE PIECE THE MOVIE オマツリ男爵と秘密の島",
      "https://www.netflix.com/watch/80998778",
      2005,
      "images/2005.jpg"));
  videos.add(Video(
      "ONE PIECE THE MOVIE カラクリ城のメカ巨兵",
      "https://www.netflix.com/watch/80998779",
      2006,
      "images/2006.jpg"));
  videos.add(Video(
      "ONE PIECE エピソード オブ アラバスタ 砂漠の王女と海賊たち",
      "https://www.netflix.com/watch/70086565",
      2007,
      "images/2007.jpg"));
  videos.add(Video(
      "ONE PIECE THE MOVIE エピソード オブ チョッパー プラス 冬に咲く、奇跡の桜",
      "https://www.netflix.com/watch/80998780",
      2008,
      "images/2008.jpg"));
  videos.add(Video(
      "ONE PIECE FILM STRONG WORLD／ワンピース フィルム ストロングワールド",
      "https://www.netflix.com/watch/80998781",
      2009,
      "images/2009.jpg"));
  videos.add(Video(
      "ONE PIECE 3D 麦わらチェイス",
      "https://www.netflix.com/watch/80198444",
      2011,
      "images/2011.jpg"));
  videos.add(Video(
      "ONE PIECE FILM Z",
      "https://www.netflix.com/watch/80198443",
      2012,
      "images/2012.jpg"));
  videos.add(Video(
      "ONE PIECE FILM GOLD",
      "https://www.netflix.com/watch/80163050",
      2016,
      "images/2016.jpg"));
  videos.add(Video(
      "ONE PIECE STAMPEDE",
      "https://www.netflix.com/watch/80155769",
      2019,
      "images/2019.jpg"));

  return videos;
}
