import 'package:flutter/material.dart';

import 'main.dart';
import 'config.dart';
import 'flavor/toeic/my_config.dart';

/// 動画リスト (TOEIC)
///
/// - https://qiita.com/hiromasa-fun/items/c79c99535f6f1db2a6a9
///
void main() {
  Config.config = MyConfig();

  runApp(application());
}

// ここに 2 つ目のアプリを作成するためにやったことを集約する。

// アプリ名
// my_config.dart に記述。
// それ以外にもありそう。

// パッケージ名
// 今回は変更しない。やるとしたら Android の build.gradle で Flavor を使う。

// アイコン

// ビデオデータ
// my_video.dart に記述。

// images (asset)

// pubspec.yaml を切り替えたい
