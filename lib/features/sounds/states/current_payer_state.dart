import 'package:music_player/features/sounds/domain/entities/song_entity.dart';
import 'package:music_player/features/sounds/states/play_button_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_payer_state.g.dart';

@riverpod
class CurrentPayerState extends _$CurrentPayerState {
  @override
  Song? build() {
    return null;
  }

  void selectSong(Song song) {
    ref.read(playButtonStateProvider.notifier).play();
    state = song;
  }
}
