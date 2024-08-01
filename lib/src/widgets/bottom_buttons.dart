import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final VoidCallback onLeftButtonPressed;
  final VoidCallback onRightButtonPressed;
  final Icon leftIcon;
  final Icon rightIcon;

  const BottomButtons({
    super.key,
    required this.onLeftButtonPressed,
    required this.onRightButtonPressed,
    this.leftIcon = const Icon(Icons.first_page, size: 35),
    this.rightIcon = const Icon(Icons.add, size: 30),
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Container(
      color: backgroundColor,
      child: SizedBox(
        height: 110,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onLeftButtonPressed,
                icon: leftIcon,
              ),
              IconButton(
                onPressed: onRightButtonPressed,
                icon: rightIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
