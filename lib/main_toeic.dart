import 'package:flutter/material.dart';

import 'application.dart';
import 'config.dart';
import 'flavor/toeic/config_toeic.dart';

/// 動画リスト (TOEIC)
///
/// - https://qiita.com/hiromasa-fun/items/c79c99535f6f1db2a6a9
///
void main() {
  Config.config = ConfigToeic();

  runApp(Application());
}

// ここに 2 つ目のアプリを作成するためにやったことを集約する。

// アプリ名
// config_toeic.dart に記述。
// それ以外にもありそう。

// パッケージ名
// 今回は変更しない。やるとしたら Android の build.gradle で Flavor を使う。

// アイコン

// ビデオデータ
// video_toeic.dart に記述。

// images (asset)

// pubspec.yaml を切り替えたい
