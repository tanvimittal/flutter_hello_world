import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config.dart';
import '../model/video.dart';
import 'common_popup_menu_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Video> videos = Config.config.videoList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Config.config.appName),
        actions: [
          CommonPopupMenuButton(context),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
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
            onTap: () => _launchURL(video.url),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}

_launchURL(url) async {
  //const url = 'http://www.netflix.com/watch/70153404';
  if (Platform.isIOS) {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  if (!Platform.isIOS) {
    await launch(url);
  }
}
