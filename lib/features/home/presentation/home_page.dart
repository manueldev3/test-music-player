import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_player/features/sounds/domain/entities/song_entity.dart';
import 'package:music_player/features/sounds/states/current_payer_state.dart';
import 'package:music_player/features/sounds/states/list_songs_state.dart';
import 'package:music_player/features/sounds/states/play_button_state.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentSong = ref.watch(currentPayerStateProvider);
    final currentSongNotifier = ref.read(currentPayerStateProvider.notifier);
    final listSongs = ref.watch(listSongsStateProvider);
    final playerStatus = ref.watch(playButtonStateProvider);
    final playerNotifier = ref.read(playButtonStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist'),
      ),
      body: ListView.builder(
        itemCount: listSongs.length,
        itemBuilder: (context, index) {
          final song = listSongs[index];
          return ListTile(
            onTap: () => currentSongNotifier.selectSong(song),
            selectedTileColor: Colors.grey[300],
            leading: song.image,
            selected: currentSong?.title == song.title,
            title: Text(song.title),
            subtitle: Text(song.artist),
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Previous button.
            IconButton(
              icon: const Icon(Icons.skip_previous),
              onPressed:
                  currentSong == null || listSongs.indexOf(currentSong) == 0
                      ? null
                      : () {
                          final index = listSongs.indexOf(currentSong);
                          currentSongNotifier.selectSong(listSongs[index - 1]);
                        },
            ),
            // Play/Pause button.
            IconButton(
              icon: playerStatus.showIcon,
              onPressed: currentSong != null
                  ? () {
                      if (playerStatus == PlayerStatus.stop ||
                          playerStatus == PlayerStatus.pause) {
                        playerNotifier.play();
                      } else {
                        playerNotifier.pause();
                      }
                    }
                  : null,
            ),
            // Next button.
            IconButton(
              icon: const Icon(Icons.skip_next),
              onPressed: currentSong == null ||
                      listSongs.indexOf(currentSong) == (listSongs.length - 1)
                  ? null
                  : () {
                      final index = listSongs.indexOf(currentSong);
                      currentSongNotifier.selectSong(listSongs[index + 1]);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
