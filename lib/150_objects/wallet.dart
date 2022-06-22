class Wallet {
  String material;
  String type;
  String currentLocation;
  bool isWalletOpen;
  List<String> stuffAvailable;
  int numberOfPockets;
  int maxNumOfStuffItCanHold;

  Wallet({
    required this.material,
    required this.type,
    required this.currentLocation,
    required this.isWalletOpen,
    required this.maxNumOfStuffItCanHold,
    required this.stuffAvailable,
    required this.numberOfPockets,
  });

  String findTheWallet() {
    return currentLocation;
  }

  bool openTheWallet(bool? isWalletFound) {
    if (isWalletFound == null || isWalletFound == false) {
      return isWalletOpen;
    }
    return !isWalletOpen;
  }

  bool get isSpaceAvailable => maxNumOfStuffItCanHold < stuffAvailable.length;

  set stuffTheWallet(String? itemName) {
    if (itemName != null) {
      stuffAvailable.add(itemName);
    }
  }
}
