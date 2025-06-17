import 'package:flutter/widgets.dart';

extension TextComponent on String {
  Text get label => Text(this, style: const TextStyle());

  Text get welcomeTitle => Text(this,
      style: const TextStyle(
        fontSize: 25,
      ));

  Text get pageTitle => Text(this,
      style: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ));

  Text get bigEmoji => Text(this,
      style: const TextStyle(
        fontSize: 100,
      ));
}
