import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_page.dart';

enum PopupMenu { Contact, About }

class CommonPopupMenuButton extends PopupMenuButton<PopupMenu>{
  CommonPopupMenuButton(BuildContext context) : super(
    itemBuilder: (BuildContext context) {
      return [
        PopupMenuItem(
          child: Text("お問い合わせ"),  // TODO: 文字列リソースをどうする？
          value: PopupMenu.Contact,
        ),
        PopupMenuItem(
          child: Text("このアプリについて"),  // TODO: 文字列リソースをどうする？
          value: PopupMenu.About,
        ),
      ];
    },
    onSelected: (PopupMenu value) {
      switch (value) {
        case PopupMenu.Contact:
          _launchURL("https://docs.google.com/forms/d/e/1FAIpQLScdNtaLi-bd6Pd_R_QCrutfITX7YGNM6-8-wUKs-IoIpNkwQw/viewform");
          break;
        case PopupMenu.About:
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AboutPage()),
          );
          break;
      }
    },
  );

  // https://pub.dev/packages/url_launcher
  static void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
