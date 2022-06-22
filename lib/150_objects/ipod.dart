import 'package:meta/meta.dart';

class Ipod {
  String currentSong;
  double batteryStatus;
  int volume;

  Ipod({
    required this.currentSong,
    required this.batteryStatus,
    required this.volume,
  });

  String changeSong(String? songToPlay) {
    if (songToPlay == null) {
      return 'Please select the song to play';
    }
    return '$songToPlay is being played';
  }

  String changeVolume(
    bool? isButtonPressed,
    bool? needToIncrese,
  ) {
    if (needToIncrese == null ||
        isButtonPressed == null ||
        isButtonPressed == false) {
      return 'Cannot change the volume';
    }
    int currentVolume = volume;
    return needToIncrese
        ? 'Volume ${++currentVolume}'
        : 'Volume ${--currentVolume}';
  }
}
