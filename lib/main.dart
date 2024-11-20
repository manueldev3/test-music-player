import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/bloc/model_bloc.dart';
import 'package:music_player/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player Challenge',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => MusicBloc(),
        child: HomePage(),
      ),
    );
  }
}
