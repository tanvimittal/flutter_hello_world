import 'package:flutter/material.dart';

import 'config.dart';
import 'ui/home_page.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.config.appName,
      theme: ThemeData(
        primarySwatch: Config.config.primarySwatch,
      ),
      home: HomePage(),
    );
  }
}
