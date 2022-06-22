import 'package:meta/meta.dart';

class Gun {
  String makeModel;
  int roundsLeft;
  int magazinSize;
  bool isAutomatic;

  Gun({
    required this.makeModel,
    required this.magazinSize,
    required this.isAutomatic,
    required this.roundsLeft,
  });

  String removeSafetyLock(bool? isSafetyAlreadyRemoved) {
    if (isSafetyAlreadyRemoved == null || isSafetyAlreadyRemoved == false) {
      return 'It is already removed';
    }
    return 'Safety lock is removed';
  }

  String shoot(bool? isSafetyAlreadyRemoved, bool? isTriggerPulled) {
    if (isSafetyAlreadyRemoved == null || isSafetyAlreadyRemoved == false) {
      return 'Cannot shoot untill safety removed';
    }
    if (isTriggerPulled == null || isTriggerPulled == false) {
      return 'Cannot shoot untill trigger pulled';
    }
    --roundsLeft;
    return 'Shot fired with your $makeModel';
  }

  String get checkRoundsLeft {
    return '$roundsLeft rounds are left';
  }
}

void main() {
  Gun gun = Gun(
    makeModel: 'AKM',
    magazinSize: 30,
    isAutomatic: true,
    roundsLeft: 30,
  );
  print(gun.checkRoundsLeft);
  print(gun.shoot(true, true));
  print(gun.checkRoundsLeft);
  print(gun.shoot(false, true));
  print(gun.checkRoundsLeft);
}
