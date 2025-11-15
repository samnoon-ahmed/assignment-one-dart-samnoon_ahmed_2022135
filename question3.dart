class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount({
    required this.accountNumber,
    required this.accountHolder,
    required this.accountType,
  }) : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient funds for withdrawal.");
    }
  }

  double getBalance() => balance;

  void displayAccountInfo() {
    print("Account Number: $accountNumber");
    print("Holder: $accountHolder");
    print("Type: $accountType");
    print("Balance: $balance\n");
  }
}

void main() {
  BankAccount account1 = BankAccount(
    accountNumber: "12345",
    accountHolder: "Alice",
    accountType: "Savings",
  );
  BankAccount account2 = BankAccount(
    accountNumber: "67890",
    accountHolder: "Bob",
    accountType: "Checking",
  );
  BankAccount account3 = BankAccount(
    accountNumber: "11111",
    accountHolder: "Charlie",
    accountType: "Savings",
  );

  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);

  account1.withdraw(200.0);
  account2.withdraw(100.0);

  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  account2.withdraw(1000.0);
}
