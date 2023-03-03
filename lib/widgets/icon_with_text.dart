import 'package:chatgpt_app_ui/utils/app_styles.dart';
import 'package:flutter/material.dart ';

class IconWithText extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconWithText({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: cBlack,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            color: cBlack,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
