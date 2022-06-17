import 'package:flutter/material.dart';
import 'package:tiktok_style_scrooling/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TikTok Style Scrooling",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}