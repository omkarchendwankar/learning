class AtmCard {
  String _bankName;
  String _paymentNetwork;
  String _cardHolderName;
  int _cardExpiryMonth;
  int _cardExpiryYear;
  int _cvv;

  AtmCard({
    required String bankName,
    required String paymentNetwork,
    required String cardHolderName,
    required int cardExpiryMonth,
    required int cardExpiryYear,
    required int cvv,
  })  : _bankName = bankName,
        _cardExpiryMonth = cardExpiryMonth,
        _cardExpiryYear = cardExpiryYear,
        _cvv = cvv,
        _paymentNetwork = paymentNetwork,
        _cardHolderName = cardHolderName;

  Map<String, dynamic> swipeOrInsert() {
    return {
      'Bank Name': _bankName,
      'Payment Network': _paymentNetwork,
      'Cardholder Name': _cardHolderName,
      'Card expiry month': _cardExpiryMonth,
      'Card expiry year': _cardExpiryYear,
      'CVV': _cvv,
    };
  }
}
