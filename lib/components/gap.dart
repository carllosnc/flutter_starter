import 'package:flutter/material.dart';

extension GapComponent on int {
  Widget get gapHorizontal => SizedBox(width: double.parse(toString()));
  Widget get gapVertical => SizedBox(height: double.parse(toString()));
}
