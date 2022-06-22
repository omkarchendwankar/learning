import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/bicycle.dart';


void main() {
  Bicycle? bicycle = Bicycle();

  setUp(() {
    bicycle = Bicycle();
  });
  
  tearDown(() {
    bicycle = null;
  });

  test("Start riding ", () {
    //Arrange
    bool isTireFlat = false;
    bool isLockedRemoved = true;
    bool areBreaksWorking = true;
    //Act
    bool result =
        bicycle!.startRiding(isTireFlat, isLockedRemoved, areBreaksWorking);
    //Assert
    expect(result, true);
  });
  test("Start riding : Null check", () {
    //Arrange
    bool isTireFlat = false;
    bool isLockedRemoved = true;
    bool areBreaksWorking = true;
    //Act
    bool result = bicycle!.startRiding(null, null, null);
    //Assert
    expect(result, false);
  });
  test("Increase speed", () {
    //Arrange
    bool isMoving = true;
    int torqueInputOnPaddle = 10;
    //Act
    int result = bicycle!.IncreseSpeed(isMoving, torqueInputOnPaddle);
    //Assert
    expect(result, 15);
  });
  test("Increase speed : Null check on isMoving", () {
    //Arrange
    bool isMoving = true;
    int torqueInputOnPaddle = 10;
    //Act
    int result = bicycle!.IncreseSpeed(null, 10);
    //Assert
    expect(result, 0);
  });
  test("Increase speed : Null check on torqueInputOnPaddle", () {
    //Arrange
    bool isMoving = true;
    int torqueInputOnPaddle = 10;
    //Act
    int result = bicycle!.IncreseSpeed(true, null);
    //Assert
    expect(result, 5);
  });
  test("Increase speed : If torqueInputOnPaddle is 0 or negative", () {
    //Arrange
    bool isMoving = true;
    int torqueInputOnPaddle = 0;
    //Act
    int result = bicycle!.IncreseSpeed(true, torqueInputOnPaddle);
    //Assert
    expect(result, 5);
  });
}
