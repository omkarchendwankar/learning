import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/ceiling_fan.dart';


void main() {
  CeilingFan? ceilingFan = CeilingFan();
  setUp(() {
    ceilingFan = CeilingFan();
  });
  tearDown(() {
    ceilingFan = null;
  });

  test('Switch on the fan', () {
    //Arrange
    bool isButtonPressed = true;

    //Act
    bool result = ceilingFan!.startFan(isButtonPressed);

    //Assert
    expect(result, true);
  });
  test('Switch on the fan : Null check', () {
    //Arrange
    bool isButtonPressed = true;

    //Act
    bool result = ceilingFan!.startFan(null);

    //Assert
    expect(result, false);
  });

  test('Adjust Speed', () {
    //Arrange
    bool isFanOn = true;
    int desiredSpeed = 4;
    //Act
    int result = ceilingFan!.AdjustSpeed(isFanOn, desiredSpeed);
    //Assert
    expect(result, 4);
  });
  test('Adjust Speed : Null check', () {
    //Arrange
    bool isFanOn = true;
    int desiredSpeed = 4;
    //Act
    int result = ceilingFan!.AdjustSpeed(null, null);
    //Assert
    expect(result, 3);
  });
  test('Adjust Speed : If speed is less than 1', () {
    //Arrange
    bool isFanOn = true;
    int desiredSpeed = 4;
    //Act
    int result = ceilingFan!.AdjustSpeed(isFanOn, -1);
    //Assert
    expect(result, 0);
  });
    test('Adjust Speed : If speed is higher than max speed', () {
    //Arrange
    bool isFanOn = true;
    int desiredSpeed = 4;
    //Act
    int result = ceilingFan!.AdjustSpeed(isFanOn, 10);
    //Assert
    expect(result, 5);
  });
}
