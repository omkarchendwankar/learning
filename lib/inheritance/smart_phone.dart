import 'package:learning/abstraction/phone.dart';

abstract class SmartPhone extends Phone {
  bool touchScreen(double touchPositionInX, double touchPositionInY);
}
