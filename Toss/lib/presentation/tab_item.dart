import 'package:flutter/material.dart';
import 'package:toss/presentation/all/all_screen.dart';
import 'package:toss/presentation/benefit/benefit_screen.dart';
import 'package:toss/presentation/home/home_screen.dart';
import 'package:toss/presentation/stock/stock_screen.dart';
import 'package:toss/presentation/tosspay/tosspay_screen.dart';

enum TabItem {
  home(activeIcon: Icons.home, tabName: '홈', firstPage: HomeScreen()),
  benefit(activeIcon: Icons.star, tabName: '혜택', firstPage: BenefitScreen()),
  tossPay(
      activeIcon: Icons.payment, tabName: '토스페이', firstPage: TosspayScreen()),
  stock(
      activeIcon: Icons.candlestick_chart,
      tabName: '주식',
      firstPage: StockScreen()),
  all(activeIcon: Icons.menu, tabName: '전체', firstPage: AllScreen());

  final IconData activeIcon, inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(
      {required this.activeIcon,
      IconData? inActiveIcon,
      required this.tabName,
      required this.firstPage})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context,
      {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color: isActivated ? Colors.white : Colors.grey,
        ),
        label: tabName);
  }
}
