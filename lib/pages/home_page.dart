import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/bloc/model_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the MusicBloc.
    final musicBloc = context.read<MusicBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Playlist'),
      ),
      body: Column(
        children: [
          // Hardcoded song widgets in the UI.
          // These are different from the songs in the songList.
          ListTile(
            title: Text('Hardcoded Song 1'),
            subtitle: Text('Hardcoded Artist 1'),
            tileColor: Colors.grey[300], // Marked as "Now Playing".
          ),
          ListTile(
            title: Text('Hardcoded Song 2'),
            subtitle: Text('Hardcoded Artist 2'),
          ),
          ListTile(
            title: Text('Hardcoded Song 3'),
            subtitle: Text('Hardcoded Artist 3'),
          ),
          ListTile(
            title: Text('Hardcoded Song 4'),
            subtitle: Text('Hardcoded Artist 4'),
          ),
          ListTile(
            title: Text('Hardcoded Song 5'),
            subtitle: Text('Hardcoded Artist 5'),
          ),
          Spacer(),
          // Control bar with Play, Previous, and Next buttons.
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Previous button.
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {
                    // TODO: Implement previous song functionality.
                    // The event handler is set up in the Bloc.
                    musicBloc.add(PreviousSongEvent());
                  },
                ),
                // Play/Pause button.
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                    // TODO: Implement play/pause functionality.
                    // The event handler is set up in the Bloc.
                    musicBloc.add(PlayPauseEvent());
                  },
                ),
                // Next button.
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {
                    // TODO: Implement next song functionality.
                    // The event handler is set up in the Bloc.
                    musicBloc.add(NextSongEvent());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
