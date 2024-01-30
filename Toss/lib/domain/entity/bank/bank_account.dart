import 'package:toss/domain/entity/bank/bank.dart';

class BankAccount {
  final Bank bank;
  final String accountTypeName;
  final int balance;

  BankAccount({
    required this.bank,
    required this.balance,
    this.accountTypeName = "",
  });

  BankAccount modifyBalance({required int newBalance}) {
    return BankAccount(
        bank: bank, balance: newBalance, accountTypeName: accountTypeName);
  }
}
