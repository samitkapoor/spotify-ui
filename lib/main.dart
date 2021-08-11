import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './premium/premium.dart';
import './library/library.dart';
import './search/search.dart';
import './homepage/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/search': (context) => Search(),
        '/library': (context) => LibraryScreen(),
        '/premium': (context) => Premium(),
      },
    );
  }
}
