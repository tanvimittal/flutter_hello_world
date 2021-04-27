import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(Config.config.appName),
      ),
    );
  }
}
