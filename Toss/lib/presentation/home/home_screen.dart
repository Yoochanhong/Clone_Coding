import 'package:flutter/material.dart';
import 'package:toss/data/dummy_data/bank/bank_accounts_dummy.dart';
import 'package:toss/presentation/home/bank_account_widget.dart';
import 'package:toss/presentation/home/home_screen_app_bar.dart';
import 'package:toss/presentation/main/main_screen.dart';
import 'package:toss/presentation/widget/big_button.dart';
import 'package:toss/presentation/widget/rounded_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: HomeScreenAppBar.appBarHeight,
            onRefresh: () async {
              await Future.delayed(const Duration(milliseconds: 500));
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: HomeScreenAppBar.appBarHeight + 10,
                  bottom: MainScreenState.bottomNavigatorHeight),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    BigButton(
                        text: "토스뱅크",
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("토스뱅크를 눌렀어요")));
                        }),
                    const SizedBox(height: 10.0),
                    RoundedContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "자산",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          ...bankAccounts
                              .map((e) => BankAccountWidget(account: e))
                              .toList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const HomeScreenAppBar(),
        ],
      ),
    );
  }
}
