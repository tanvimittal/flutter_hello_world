import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config.dart';
import 'common_popup_menu_button.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("このアプリについて"),
        actions: [
          CommonPopupMenuButton(context),
        ],
      ),
      body: _buildContent(),
    );
  }

  // option + ↑ => option + command + M => shift + F6
  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "images/toeic.png",  // TODO: アイコンをアプリ毎に自動で変える
            width: 180.0,
            height: 180.0,
          ),
          SizedBox(height: 18.0),
          Text(Config.config.appName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(height: 18.0),
          ElevatedButton(
            child: Text('お問い合わせ'),
            onPressed: () {
              _launchURL("https://docs.google.com/forms/d/e/1FAIpQLScdNtaLi-bd6Pd_R_QCrutfITX7YGNM6-8-wUKs-IoIpNkwQw/viewform");
            },
          ),
          // ElevatedButton(
          //   child: Text('プライバシーポリシー'),
          //   onPressed: () {},
          // ),
          // ElevatedButton(
          //   child: Text('著作権情報'),
          //   onPressed: () {},
          // ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }

  // https://pub.dev/packages/url_launcher
  static void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
