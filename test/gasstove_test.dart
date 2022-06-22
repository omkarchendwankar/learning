 import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/gasstove.dart';


void main() {
  GasStove? gasStove = GasStove();
  setUp(() {
    gasStove = GasStove();
  });
  tearDown(() {
    gasStove = null;
  });
  test("Switch on the gas", () {
    //Arrange
    bool isRegulatorOn = true;

    //Act
    bool result = gasStove!.gasStoveOn(isRegulatorOn);

    //Assert
    expect(result, true);
  });
  test("Switch on the gas : checking for null", () {
    //Arrange
    bool? isRegulatorOn = null;

    //Act
    bool result = gasStove!.gasStoveOn(isRegulatorOn);

    //Assert
    expect(result, false);
  });
  test("Increase the flame", () {
    //Arrange
    bool? isGasStoveOn = true;

    //Act
    int result = gasStove!.regulateGasflame(isGasStoveOn, 2);

    //Assert
    expect(result, 7);
  });

  test("Decrease the flame", () {
    //Arrange
    bool? isGasStoveOn = true;

    //Act
    int result = gasStove!.regulateGasflame(isGasStoveOn, -2);

    //Assert
    expect(result, 3);
  });
  test("Flame regulation : checking for both the inputs are null", () {
    //Arrange
    bool? isGasStoveOn = true;

    //Act
    int result = gasStove!.regulateGasflame(null, null);

    //Assert
    expect(result, 0);
  });
  test("Flame regulation : checking for regulation rate null", () {
    //Arrange
    bool? isGasStoveOn = true;

    //Act
    int result = gasStove!.regulateGasflame(isGasStoveOn, null);

    //Assert
    expect(result, 5);
  });
}
