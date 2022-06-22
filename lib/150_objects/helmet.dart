class Helmet {
  String makeModel = 'Vega crux';
  String helmetMaterial = 'Carbon fibre';
  bool _isNeckHoldStarpsOn = false;
  bool _isWindShieldDown = false;

  bool get isWindShieldDown => _isWindShieldDown;

  set pullDownWindShield(bool? pulledDown) {
    _isWindShieldDown = pulledDown!;
  }

  set pushUpWindShield(bool? pushedUp) {
    _isWindShieldDown = pushedUp!;
  }

  bool get isStrapLocked => _isNeckHoldStarpsOn;

  set putOnNeckStrap(bool? lockStrap) {
    _isNeckHoldStarpsOn = lockStrap!;
  }

  set takeOffNeckStrap(bool? unLockStrap) {
    _isNeckHoldStarpsOn = unLockStrap!;
  }

  bool wearTheHelmet(bool? isNeckStrapLoosen) {
    if (isNeckStrapLoosen == null || isNeckStrapLoosen == false) {
      return false;
    }
    return true;
  }
}
