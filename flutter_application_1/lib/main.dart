import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detail_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'detail_page': (context) => const DetailPage(),
      },
    );
  }
}