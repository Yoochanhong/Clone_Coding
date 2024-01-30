import 'package:flutter/material.dart';
import 'package:toss/presentation/widget/rounded_container.dart';

class BigButton extends StatelessWidget {
  const BigButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
