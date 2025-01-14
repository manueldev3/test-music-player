// import 'package:flutter_bloc/flutter_bloc.dart';

// // Define events.
// abstract class MusicEvent {}

// class PlayPauseEvent extends MusicEvent {}

// class NextSongEvent extends MusicEvent {}

// class PreviousSongEvent extends MusicEvent {}

// // Define states.
// class MusicState {
//   final bool isPlaying;
//   final int currentSongIndex;

//   MusicState({
//     // required this.isPlaying,
//     required this.currentSongIndex,
//   });

//   MusicState copyWith({
//     bool? isPlaying,
//     int? currentSongIndex,
//   }) {
//     return MusicState(
//       isPlaying: isPlaying ?? this.isPlaying,
//       currentSongIndex: currentSongIndex ?? this.currentSongIndex,
//     );
//   }
// }

// class MusicBloc extends Bloc<MusicEvent, MusicState> {
//   // Hardcoded list of songs (not yet connected to UI).
//   final List<Song> songList = [
//     Song(
//       title: 'Billie Jean',
//       artist: 'Michael Jackson',
//       duration: '4:54',
//       imageUrl:
//           'https://via.placeholder.com/150/0000FF/808080?text=Billie+Jean',
//     ),
//     Song(
//       title: 'Sweet Child o\' Mine',
//       artist: 'Guns N\' Roses',
//       duration: '5:56',
//       imageUrl:
//           'https://via.placeholder.com/150/FF0000/FFFFFF?text=Sweet+Child+o%27+Mine',
//     ),
//     Song(
//       title: 'Like a Prayer',
//       artist: 'Madonna',
//       duration: '5:41',
//       imageUrl:
//           'https://via.placeholder.com/150/FFFF00/000000?text=Like+a+Prayer',
//     ),
//     Song(
//       title: 'Smells Like Teen Spirit',
//       artist: 'Nirvana',
//       duration: '5:01',
//       imageUrl:
//           'https://via.placeholder.com/150/00FF00/000000?text=Smells+Like+Teen+Spirit',
//     ),
//     Song(
//       title: 'Wonderwall',
//       artist: 'Oasis',
//       duration: '4:18',
//       imageUrl: 'https://via.placeholder.com/150/FFA500/FFFFFF?text=Wonderwall',
//     ),
//   ];

//   MusicBloc() : super(MusicState(isPlaying: false, currentSongIndex: 0)) {
//     on<PlayPauseEvent>(_onPlayPause);
//     on<NextSongEvent>(_onNextSong);
//     on<PreviousSongEvent>(_onPreviousSong);
//   }

//   // Event handler for play/pause.
//   void _onPlayPause(PlayPauseEvent event, Emitter<MusicState> emit) {
//     // TODO: Implement play/pause state toggling.
//   }

//   // Event handler for next song.
//   void _onNextSong(NextSongEvent event, Emitter<MusicState> emit) {
//     // TODO: Implement next song functionality.
//   }

//   // Event handler for previous song.
//   void _onPreviousSong(PreviousSongEvent event, Emitter<MusicState> emit) {
//     // TODO: Implement previous song functionality.
//   }
// }
