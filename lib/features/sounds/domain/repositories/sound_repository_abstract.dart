import 'package:music_player/features/sounds/domain/entities/song_entity.dart';

abstract class SongsRepositoryAbstract {
  List<Song> getMusicList();
}
