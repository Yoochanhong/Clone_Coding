import 'package:toss/data/dummy_data/bank/banks_dummy.dart';
import 'package:toss/domain/entity/bank/bank_account.dart';

final bankAccountShinhan1 = BankAccount(
    bank: bankShinhan, balance: 300000, accountTypeName: "신한 주거래 우대통장(저축예금)");

final bankAccountShinhan2 =
    BankAccount(bank: bankShinhan, balance: 3000000, accountTypeName: "저축예금");

final bankAccountShinhan3 =
    BankAccount(bank: bankShinhan, balance: 300000000, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(bank: bankToss, balance: 50000000);

final bankAccountKakao =
    BankAccount(bank: bankKakao, balance: 70000000, accountTypeName: "입출금통장");

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
];
