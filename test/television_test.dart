import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/television.dart';


void main() {
  TeleVision? teleVision;

  setUp(() {
    teleVision = TeleVision(
      isMute: false,
      isPowerOn: false,
      numberOfChannels: 599,
      makeModel: 'Samsung Smart Tv',
    );
  });

  tearDown(() {
    teleVision = null;
  });

  test('Allow user to power on the TV only if isButtonPressed true', () {
    //Arrange
    bool isPowerButtonPressed = true;
    //Act
    String result = teleVision!.powerOn(isPowerButtonPressed);
    //Assert
    expect(result, 'Tv is on');
  });
  test('Do not allow user to power on the TV if isButtonPressed is null', () {
    //Act
    String result = teleVision!.powerOn(null);
    //Assert
    expect(result, 'Cannot switch on tv untill button pressed');
  });
  test('Allow user to mute the TV only if isMuteButtonPressed is true', () {
    //Arrange
    bool isMuteButtonPressed = true;
    //Act
    String result = teleVision!.muteTheTv(isMuteButtonPressed);
    //Assert
    expect(result, 'Tv is muted');
  });
  test('Do not allow user to mute the TV if isMuteButtonPressed is null', () {
    //Act
    String result = teleVision!.muteTheTv(null);
    //Assert
    expect(result, 'Cannot mute untill button pressed');
  });
  test(
      'Allow user to goto specific channel if button pressed is true and channel number is valid',
      () {
    //Arrange
    bool isButtonPressed = true;
    int channelNumber = 100;
    //Act
    String result =
        teleVision!.goToChannelNumber(isButtonPressed, channelNumber);
    //Assert
    expect(result, 'Channel 100');
  });
  test('Do not allow user to goto specific channel if button pressed is null',
      () {
    //Arrange
    int channelNumber = 100;
    //Act
    String result = teleVision!.goToChannelNumber(null, channelNumber);
    //Assert
    expect(result, 'Button is not pressed');
  });
  test('Do not allow user to goto specific channel if channelNumber is null',
      () {
    //Arrange
    bool isButtonPressed = true;
    //Act
    String result = teleVision!.goToChannelNumber(isButtonPressed, null);
    //Assert
    expect(result, 'Channel number is not valid');
  });
  test('Do not allow user to goto specific channel if channelNumber is null',
      () {
    //Arrange
    bool isButtonPressed = true;
    //Act
    String result = teleVision!.goToChannelNumber(isButtonPressed, null);
    //Assert
    expect(result, 'Channel number is not valid');
  });
  test(
      'Do not allow user to goto specific channel if channelNumber is out of range',
      () {
    //Arrange
    bool isButtonPressed = true;
    int channelNumber = 1000;
    //Act
    String result =
        teleVision!.goToChannelNumber(isButtonPressed, channelNumber);
    //Assert
    expect(result, 'Channel number is not valid');
  });
  test('Allow user to change to next channel if button is pressed', () {
    //Arrange
    bool isButtonPressed = true;
    //Act
    String result = teleVision!.nextChannel(isButtonPressed);
    //Assert
    expect(result, 'Channel 2');
  });
  test('Do not allow user to change to next channel if button pressed is null',
      () {
    //Act
    String result = teleVision!.nextChannel(null);
    //Assert
    expect(result, 'Button is not pressed');
  });
  test('Allow user to change to previous channel if button is pressed', () {
    //Arrange
    bool isButtonPressed = true;
    //Act
    String result = teleVision!.previousChannel(isButtonPressed);
    //Assert
    expect(result, 'Channel 599');
  });
  test(
      'Do not allow user to change to previous channel if button pressed is null',
      () {
    //Act
    String result = teleVision!.previousChannel(null);
    //Assert
    expect(result, 'Button is not pressed');
  });
}
