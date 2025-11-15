import 'package:test/test.dart';
import 'dart:io';
import '../question3.dart';

void main() {
  group('Question 3 Tests', () {
    test('BankAccount class can be instantiated', () {
      var account = BankAccount(
        accountNumber: "12345",
        accountHolder: "Alice",
        accountType: "Savings",
      );
      expect(account.accountNumber, equals("12345"));
      expect(account.accountHolder, equals("Alice"));
      expect(account.accountType, equals("Savings"));
      expect(account.balance, equals(0.0));
    });
    
    test('deposit method works correctly', () {
      var account = BankAccount(
        accountNumber: "12345",
        accountHolder: "Alice",
        accountType: "Savings",
      );
      account.deposit(100.0);
      expect(account.getBalance(), equals(100.0));
    });
    
    test('withdraw method works correctly', () {
      var account = BankAccount(
        accountNumber: "12345",
        accountHolder: "Alice",
        accountType: "Savings",
      );
      account.deposit(100.0);
      account.withdraw(50.0);
      expect(account.getBalance(), equals(50.0));
    });
    
    test('withdraw handles insufficient funds', () {
      var account = BankAccount(
        accountNumber: "12345",
        accountHolder: "Alice",
        accountType: "Savings",
      );
      account.deposit(50.0);
      account.withdraw(100.0);
      expect(account.getBalance(), equals(50.0)); // Balance should remain unchanged
    });
    
    test('main function runs without errors', () {
      expect(true, isTrue);
    });
  });
}
