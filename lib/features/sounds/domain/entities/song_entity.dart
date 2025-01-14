import 'package:flutter/material.dart';

class Song {
  final String title;
  final String artist;
  final String duration;
  final String imageUrl;

  Song({
    required this.title,
    required this.artist,
    required this.duration,
    required this.imageUrl,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      title: json['title'] as String,
      artist: json['artist'] as String,
      duration: json['duration'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Widget get image => Image.network(imageUrl);
}

enum PlayerStatus {
  stop,
  pause,
  play,
}

extension PlayerStatusExtension on PlayerStatus {
  Icon get showIcon {
    switch (this) {
      case PlayerStatus.stop:
        return const Icon(Icons.play_arrow_rounded);
      case PlayerStatus.pause:
        return const Icon(Icons.play_arrow_rounded);
      case PlayerStatus.play:
        return const Icon(Icons.pause_rounded);
    }
  }
}
