import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/ipod.dart';


void main() {
  Ipod? ipod;
  setUp(() {
    ipod = Ipod(
      currentSong: 'The Lion sleeps tonight',
      batteryStatus: 45,
      volume: 5,
    );
  });
  tearDown(() {
    ipod = null;
  });
  test('test for functionality of changing song', () {
    //If song passed as parameter is not null
    //Arrange
    String songToPlay = 'Sanam';
    //Act
    String result = ipod!.changeSong(songToPlay);
    //Assert
    expect(result, 'Sanam is being played');
    //If song passed as parameter is null
    //Act
    String result2 = ipod!.changeSong(null);
    //Assert
    expect(result2, 'Please select the song to play');
  });
}
