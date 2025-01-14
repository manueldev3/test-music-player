import 'package:music_player/core/databse.dart';
import 'package:music_player/features/sounds/domain/entities/song_entity.dart';
import 'package:music_player/features/sounds/domain/repositories/sound_repository_abstract.dart';

class SongsRepository implements SongsRepositoryAbstract {
  @override
  List<Song> getMusicList() {
    final list = songList;
    return List<Song>.from(
      list.map(
        (json) => Song.fromJson(json),
      ),
    );
  }
}
