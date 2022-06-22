import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/water_bottle.dart';


void main() {
  WaterBottle? waterBottle = WaterBottle();
  setUp(() {
    waterBottle = WaterBottle();
  });
  tearDown(() {
    waterBottle = null;
  });

  test("Remove the bottle cap", () {
    //Arrange
    bool isCapTakenOffAlready = false;
    //Act
    bool result = waterBottle!.removeCap(isCapTakenOffAlready);
    //Assert
    expect(result, true);
  });
  test("Remove the bottle cap : Null check", () {
    //Arrange
    bool isCapTakenOffAlready = false;
    //Act
    bool result = waterBottle!.removeCap(null);
    //Assert
    expect(result, false);
  });
  test("Pour the water: Out of the bottle", () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = false;
    double quantityRequiredInMl = 100;
    //Act
    double result = waterBottle!
        .pourTheWater(isCapTakenOff, quantityRequiredInMl, pourIntoTheBottle);
    //Assert
    expect(result, 100);
  });
  test("Pour the water: Into the bottle", () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = true;
    double quantityRequiredInMl = 100;
    //Act
    double result = waterBottle!
        .pourTheWater(isCapTakenOff, quantityRequiredInMl, pourIntoTheBottle);
    //Assert
    expect(result, 300);
  });
  test(
      "Pour the water: Out of the bottle but quantity is higher than available capacity",
      () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = true;
    double quantityRequiredInMl = 1000;
    //Act
    double result = waterBottle!
        .pourTheWater(isCapTakenOff, quantityRequiredInMl, pourIntoTheBottle);
    //Assert
    expect(result, 1000);
  });
  test(
      "Pour the water: Into the bottle but quantity is higher than available water in ml",
      () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = false;
    double quantityRequiredInMl = 1000;
    //Act
    double result = waterBottle!
        .pourTheWater(isCapTakenOff, quantityRequiredInMl, pourIntoTheBottle);
    //Assert
    expect(result, 0);
  });
  test("Pour the water: Null check for cap", () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = false;
    double quantityRequiredInMl = 1000;
    //Act
    double result = waterBottle!
        .pourTheWater(null, quantityRequiredInMl, pourIntoTheBottle);
    //Assert
    expect(result, 200);
  });
  test("Pour the water: Null check for quantity required in ml", () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = false;
    double quantityRequiredInMl = 1000;
    //Act
    double result =
        waterBottle!.pourTheWater(isCapTakenOff, null, pourIntoTheBottle);
    //Assert
    expect(result, 200);
  });
  test("Pour the water: Null check for pourIntoTheBottle", () {
    //Arrange
    bool isCapTakenOff = true;
    bool pourIntoTheBottle = false;
    double quantityRequiredInMl = 1000;
    //Act
    double result =
        waterBottle!.pourTheWater(isCapTakenOff, quantityRequiredInMl, null);
    //Assert
    expect(result, 200);
  });
}
