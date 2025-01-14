import 'package:music_player/features/sounds/domain/entities/song_entity.dart';
import 'package:music_player/features/sounds/domain/repositories/sound_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_songs_state.g.dart';

@riverpod
class ListSongsState extends _$ListSongsState {
  @override
  List<Song> build() {
    return SongsRepository().getMusicList();
  }
}
