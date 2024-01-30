import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatefulWidget {
  const HomeScreenAppBar({super.key});

  static const double appBarHeight = 60;

  @override
  State<HomeScreenAppBar> createState() => _HomeScreenAppBarState();
}

class _HomeScreenAppBarState extends State<HomeScreenAppBar> {
  bool _showRedDot = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 16, 16, 18),
      height: HomeScreenAppBar.appBarHeight,
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset(
            "assets/image/icon/toss.png",
            height: 30,
          ),
          const Expanded(child: SizedBox.shrink()),
          Image.asset(
            "assets/image/icon/map_point.png",
            height: 30,
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              Image.asset(
                "assets/image/icon/notification.png",
                height: 30,
              ),
              _showRedDot
                  ? Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
