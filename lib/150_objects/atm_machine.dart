import 'package:learning/150_objects/atm_card.dart';
import 'package:learning/150_objects/bank_account.dart';

class AtmMachine {
  String _bankName;
  bool _isItInWorkingCondition;
  List<BankAccount> _accountDetails;

  AtmMachine({
    required String bankName,
    required bool isItInWorkingCondition,
    required List<BankAccount> accountDetails,
  })  : _bankName = bankName,
        _isItInWorkingCondition = isItInWorkingCondition,
        _accountDetails = accountDetails;

  Map insertAtmCard(AtmCard cardDetails) {
    return cardDetails.swipeOrInsert();
  }

  bool validateAtmCard(bool? isAtmCardInserted) {
    if (isAtmCardInserted == null || isAtmCardInserted == false) {
      return false;
    }
    return true;
  }

  double checkAccountBalance(int? accountNumber, int? atmPin) {
    if (accountNumber == null || atmPin == null) {
      return 0;
    }
    List<BankAccount> account = _accountDetails
        .where((element) => element.getAccountNumber == accountNumber)
        .toList();
    return account[0].checkAccountBalance(atmPin);
  }

  bool depositMoney(int? accountNumber, int? atmPin, double enterAmount) {
    if (accountNumber == null || atmPin == null) {
      return false;
    }
    List<BankAccount> account = _accountDetails
        .where((element) => element.getAccountNumber == accountNumber)
        .toList();

    bool isAmountDeposited = account[0].depositAmount(enterAmount);
    return isAmountDeposited;
  }

  bool withdrawMoney(int? accountNumber, int? atmPin, double enterAmount) {
    bool isAmountDeposited = false;
    if (accountNumber == null || atmPin == null) {
      return false;
    }
    List<BankAccount> account = _accountDetails
        .where((element) => element.getAccountNumber == accountNumber)
        .toList();
    isAmountDeposited = account[0].withdrawAmount(enterAmount);
    return isAmountDeposited;
  }
}
