class Boat {
  String material = 'Wood';
  bool isItFloating = true;
  bool isItMoving = false;

  bool moveForward(bool isOaringForward) {
    return isOaringForward ? !isItMoving : isItMoving;
  }

  bool moveBackward(bool isOaringForward) {
    return isOaringForward ? !isItMoving : isItMoving;
  }

  bool stopMoving(bool isOaringStopped) {
    return isOaringStopped ? isItMoving : !isItMoving;
  }

  bool takeLeftTurn(bool isOaring) {
    return isOaring ? !isItMoving : isItMoving;
  }

  bool takeRightTurn(bool isOaring) {
    return isOaring ? !isItMoving : isItMoving;
  }
}
