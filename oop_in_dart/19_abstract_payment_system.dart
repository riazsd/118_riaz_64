abstract class Payment {
  final double amount;

  Payment(this.amount);

  void pay();
}

class CashPayment extends Payment {
  CashPayment(super.amount);

  @override
  void pay() {
    print('Paid ${amount.toStringAsFixed(2)} using cash.');
  }
}

class CardPayment extends Payment {
  final String cardNumber;

  CardPayment(double amount, this.cardNumber) : super(amount);

  @override
  void pay() {
    final lastFour = cardNumber.substring(cardNumber.length - 4);
    print('Paid ${amount.toStringAsFixed(2)} using card ending $lastFour.');
  }
}

void main() {
  final Payment cash = CashPayment(500);
  final Payment card = CardPayment(1200, '1234567812345678');
  cash.pay();
  card.pay();
}
