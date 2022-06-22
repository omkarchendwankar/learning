import 'package:meta/meta.dart';
class TeleVision {
  String makeModel;
  bool isPowerOn;
  int numberOfChannels;
  bool isMute;
  int maxVolume = 10;
  int currentChannelNumber = 1;

  TeleVision({
    required this.makeModel,
    required this.isPowerOn,
    required this.isMute,
    required this.numberOfChannels
  });

  String powerOn(bool? isPowerButtonPressed) {
    if (isPowerButtonPressed == null || isPowerButtonPressed == false) {
      return 'Cannot switch on tv untill button pressed';
    }
    return 'Tv is on';
  }

  String muteTheTv(bool? isMuteButtonPressed) {
    if (isMuteButtonPressed == null || isMuteButtonPressed == false) {
      return 'Cannot mute untill button pressed';
    }
    return 'Tv is muted';
  }

  String goToChannelNumber(bool? isButtonPressed, int? channelNumber) {
    if (isButtonPressed == false || isButtonPressed == null) {
      return 'Button is not pressed';
    }
    if (channelNumber == null ||
        !(channelNumber >= 0 && channelNumber <= numberOfChannels)) {
      return 'Channel number is not valid';
    }
    return 'Channel $channelNumber';
  }

  String nextChannel(bool? isButtonPressed) {
    if (isButtonPressed == false || isButtonPressed == null) {
      return 'Button is not pressed';
    }
    return 'Channel ${currentChannelNumber >= numberOfChannels ? 1 : ++currentChannelNumber }';
  }

  String previousChannel(bool? isButtonPressed) {
    if (isButtonPressed == false || isButtonPressed == null) {
      return 'Button is not pressed';
    }
    return 'Channel ${currentChannelNumber == 1 ? numberOfChannels : --currentChannelNumber}';
  }
}
