import 'package:flutter/material.dart';
import 'package:toss/domain/entity/bank/bank_account.dart';
import 'package:toss/presentation/widget/rounded_container.dart';

class BankAccountWidget extends StatelessWidget {
  const BankAccountWidget({super.key, required this.account});

  final BankAccount account;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.accountTypeName.isNotEmpty
                      ? account.accountTypeName
                      : "${account.bank.name} 통장",
                  style: const TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                Text(
                  "${account.balance}원",
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const RoundedContainer(
          radius: 10.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          backgroundColor: Color.fromARGB(255, 48, 48, 48),
          child: Text(
            "송금",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
