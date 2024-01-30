import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      required this.child,
      this.radius = 20.0,
      this.backgroundColor,
      this.padding =
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)});

  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color.fromARGB(255, 24, 24, 24),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
