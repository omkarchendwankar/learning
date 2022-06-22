class Dog {
  String nickName;
  String breed;
  int age;

  Dog({
    required this.nickName,
    required this.breed,
    required this.age,
  });

  String trainTheDog(bool? isDogTrainedAlready) {
    if (isDogTrainedAlready == null || isDogTrainedAlready == true) {
      return 'Dog is trained already';
    }
    return 'Dog is trained now';
  }

  String playing(String? giveTheCommand) {
    if (giveTheCommand == null) {
      return 'You didn\'t give any command, Please give the specific command';
    }

    String dogResponse;
    switch (giveTheCommand.toLowerCase()) {
      case 'run':
        {
          dogResponse = '$nickName is running';
        }
        break;
      case 'sit':
        {
          dogResponse = '$nickName sat down';
        }
        break;
      case 'come':
        {
          dogResponse = '$nickName has come to you';
        }
        break;
      case 'heel':
        {
          dogResponse = '$nickName is walking beside you';
        }
        break;
      default:
        {
          dogResponse =
              '$nickName didn\'t understand, try saying something familiar';
        }
    }
    return dogResponse;
  }
}
