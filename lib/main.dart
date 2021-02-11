import 'dart:io';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:url_launcher/url_launcher.dart';

import 'video.dart';

void main() => runApp(application());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
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
  List<Video> videos = Video.getVideoList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Array List",
      home: Scaffold(
        appBar: AppBar(title: new Text('List of arrays'),),
        body: ListView.builder(
            itemCount: videos.length,
            itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("${videos[index].title} ${videos[index].year} 年"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  /*onTap: () => ScaffoldMessenger
                      .of(context)
                      .showSnackBar(SnackBar(content: Text(index.toString()))), */
                  onTap: () {
                    _launchURL(videos[index].url);
                    },
                );
            }),
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
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}

