import 'package:learning/150_objects/atm_card.dart';

class BankAccount {
  String _accountHolderName;
  int _accountNumber;
  double _accountBalance;
  double _monthlyAccountMaintenance;
  String _userName;
  String _password;
  int _atmPin;
  String _paymentNetworks;

  BankAccount(
      {required String accountHolderName,
      required int accountNumber,
      required double accountBalance,
      required double monthlyAccountMaintenance,
      required String userName,
      required String password,
      required int atmPin,
      required AtmCard cardDetails,
      required String paymentNetworks})
      : _accountHolderName = accountHolderName,
        _accountBalance = accountBalance,
        _monthlyAccountMaintenance = monthlyAccountMaintenance,
        _accountNumber = accountNumber,
        _userName = userName,
        _password = password,
        _atmPin = atmPin,
        _paymentNetworks = paymentNetworks;

  double checkAccountBalance(int atmPin) {
    if (atmPin == _atmPin) {
      return _accountBalance;
    }
    return 0;
  }

  int get getAccountNumber => _accountNumber;

  String get paymentNetwork => _paymentNetworks;

  bool verifyAmCard(String? cardHolderName, String? paymentNetworks) {
    if (cardHolderName == null || paymentNetworks == null) {
      return false;
    }
    if (cardHolderName == _accountHolderName &&
        paymentNetworks == _paymentNetworks) {
      return true;
    }
    return false;
  }

  bool depositAmount(double? enterAmount) {
    if (enterAmount != null) {
      _accountBalance += enterAmount;
      return true;
    }
    return false;
  }

  bool withdrawAmount(double? enterAmount) {
    if (enterAmount != null) {
      _accountBalance -= enterAmount;
      return true;
    }
    return false;
  }
}
