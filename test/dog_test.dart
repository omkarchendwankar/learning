import 'package:flutter_test/flutter_test.dart';
import 'package:learning/150_objects/dog.dart';

void main() {
  Dog? dog;
  setUp(() {
    dog = Dog(
      nickName: 'Bucky',
      breed: 'German Shepherd',
      age: 4,
    );
  });
  tearDown(() {
    dog = null;
  });
  test('test for functionality to train the dog', () {
    //If dog is trained already
    //Arrange
    bool isDogTrainedAlready = true;
    //Act
    String result = dog!.trainTheDog(isDogTrainedAlready);
    //Assert
    expect(result, 'Dog is trained already');
    //If dog is not trained
    //Arrange
    bool isDogTrainedAlready2 = false;
    //Act
    String result2 = dog!.trainTheDog(isDogTrainedAlready2);
    //Assert
    expect(result2, 'Dog is trained now');
    //If parameter passed to check if dog is trained already is null
    //Act
    String result3 = dog!.trainTheDog(null);
    //Assert
    expect(result3, 'Dog is trained already');
  });
}
