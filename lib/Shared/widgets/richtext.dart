import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget richtext({
  required String text1,
  required String text2,
  required BuildContext context,
  VoidCallback? onpress,
}) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(text: text1, style: const TextStyle(fontSize: 12)),
        TextSpan(
          recognizer: TapGestureRecognizer()..onTap = onpress,
          text: text2,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Theme.of(context).colorScheme.primary),
        ),
      ],
    ),
  );
}
