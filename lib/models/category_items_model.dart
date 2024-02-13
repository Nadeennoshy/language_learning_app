import 'package:audioplayers/audioplayers.dart';

class CategoriesItemModel {
  final String? image;
  final String japaneseName;
  final String englishName;
  final String sound;

  const CategoriesItemModel({
    this.image,
    required this.japaneseName,
    required this.englishName,
    required this.sound,
  });

  onClick() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
