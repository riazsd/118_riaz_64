class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print('Balance cannot be negative.');
    }
  }
}

void main() {
  final account = BankAccount();
  account.balance = 500;
  print('Balance: ${account.balance}');
  account.balance = -100;
  print('Balance: ${account.balance}');
}
