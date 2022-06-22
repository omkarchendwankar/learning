import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/elevator.dart';


void main() {
  Elevator? elevator = Elevator();
  setUp(() {
    elevator = Elevator();
  });
  tearDown(() {
    elevator = null;
  });
  test('To open the elevator', () {
    //Arrange
    bool isButtonPressed = true;

    //Act
    bool result = elevator!.openDoor(isButtonPressed);

    //Assert
    expect(result, true);
  });
  test('To open the elevator : null check', () {
    //Arrange
    bool isButtonPressed = true;

    //Act
    bool result = elevator!.openDoor(null);

    //Assert
    expect(result, false);
  });
  test('Go to specific floor', () {
    //Arrange
    bool isDoorClosed = true;

    //Act
    int result = elevator!.goToFloor(isDoorClosed, 5);

    //Assert
    expect(result, 5);
  });
  test('Go to specific floor : Check for floor number exceeding max floors',
      () {
    //Arrange
    bool isDoorClosed = true;

    //Act
    int result = elevator!.goToFloor(isDoorClosed, 11);

    //Assert
    expect(result, 10);
  });
  test('Go to specific floor : check for floor number less than 0', () {
    //Arrange
    bool isDoorClosed = true;

    //Act
    int result = elevator!.goToFloor(isDoorClosed, -1);

    //Assert
    expect(result, 0);
  });
  test('Go to specific floor : check for null floor number and door open', () {
    //Arrange
    bool isDoorClosed = true;

    //Act
    int result = elevator!.goToFloor(false, null);

    //Assert
    expect(result, 2);
  });
}
