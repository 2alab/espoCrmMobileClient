import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import 'app.dart';

Future main() async {
  SystemChrome.setEnabledSystemUIOverlays([]);

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  runApp(createApp());
}
