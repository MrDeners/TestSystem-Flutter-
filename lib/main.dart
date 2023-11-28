
import 'package:flutter/material.dart';
import 'Pages/Pages.dart';

void main () => runApp(MaterialApp(
    initialRoute: '/',
  routes: {
      '/': (context) => HomePage(),
    '/Chapters': (context) => const ChaptersPage(),
    '/Settings': (context) => const SettingsPage(),
    '/Theory': (context) => const TheoryPage(),
    '/Test': (context) => const TestPage(),
  },
));

