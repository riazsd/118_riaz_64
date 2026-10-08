class BankAccount {
  final String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit must be positive.');
      return;
    }
    balance += amount;
    print('Deposited: $amount');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal must be positive.');
    } else if (amount > balance) {
      print('Insufficient balance.');
    } else {
      balance -= amount;
      print('Withdrawn: $amount');
    }
  }

  void displayBalance() {
    print('Balance: ${balance.toStringAsFixed(2)}');
  }
}

void main() {
  final account = BankAccount('Rahim', 1000);
  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000);
  account.displayBalance();
}
