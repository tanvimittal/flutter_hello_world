import 'dart:io';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:url_launcher/url_launcher.dart';

import 'video.dart';
import 'config.dart';

void main() {
  Config.config = MainConfig();

  runApp(application());
}

class MainConfig implements Config {
  @override
  int appId = 1;

  @override
  String appName = "ワンピース映画リスト";

  @override
  List<Video> videoList = Video.getVideoList();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'ワンピース映画リスト',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          //child: const Text('Hello World'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {
  List<Video> videos = Config.config.videoList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: Config.config.appName,
      home: Scaffold(
        appBar: AppBar(title: new Text(Config.config.appName),),
        body: ListView.separated(
          itemCount: videos.length,
          itemBuilder: (BuildContext context, int index) {
            final Video video = videos[index];
            Text subtitle;

            if (video.year == null) {
              subtitle = null;
            } else {
              subtitle = Text(
                "${video.year} 年",
                textAlign: TextAlign.right,
              );
            }

            return ListTile(
              title: Text("${video.title}"),
              leading: Image.asset(
                video.image,
                width: 70.0,
                height: 70.0,
              ),
              subtitle: subtitle,
              trailing: Icon(Icons.arrow_forward_ios),
              //onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(index.toString()))),
              onTap: () {
                _launchURL(video.url);
              },
            );
            },
          separatorBuilder: (context, index) {
            return Divider();
            },
        ),
      ),
    );
  }
}

_launchURL(url) async {
  //const url = 'http://www.netflix.com/watch/70153404';
  if(Platform.isIOS) {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    }else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  if(!Platform.isIOS) {
    await launch(url);
  }
}