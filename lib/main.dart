import 'package:first_project/details_view.dart';
import 'package:first_project/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "details": (context) => const DetailsView(),
      },
      home: const HomeView(),
    );
  }
}
