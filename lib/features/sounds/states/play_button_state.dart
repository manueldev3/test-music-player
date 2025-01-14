import 'package:music_player/features/sounds/domain/entities/song_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'play_button_state.g.dart';

@riverpod
class PlayButtonState extends _$PlayButtonState {
  @override
  PlayerStatus build() {
    return PlayerStatus.stop;
  }

  void play() {
    state = PlayerStatus.play;
  }

  void stop() {
    state = PlayerStatus.stop;
  }

  void pause() {
    state = PlayerStatus.pause;
  }
}
