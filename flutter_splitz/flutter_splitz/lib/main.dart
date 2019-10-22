import 'package:flutter/material.dart';
import 'package:flutter_splitz/router/router.dart';
import 'package:flutter_splitz/theme/splitz_theme.dart';
import 'package:logging/logging.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: Router().call(context),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: SplitzThemeData().call(),
    );
  }
}