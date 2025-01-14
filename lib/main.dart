import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_player/features/home/presentation/home_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root of the application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Music Player Challenge',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
