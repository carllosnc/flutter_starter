import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final bool? fullWidth;
  final bool? hidden;
  final bool? loading;

  const AppFilledButton({
    super.key,
    required this.label,
    this.onPressed,
    this.onLongPress,
    this.fullWidth = false,
    this.hidden = false,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    var width = fullWidth! ? double.infinity : null;

    if (loading!) {
      return SizedBox(
        width: width,
        child: const FilledButton(
          onPressed: null,
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 3),
          ),
        ),
      );
    }

    if (hidden!) {
      return const SizedBox.shrink();
    }

    return FilledButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: SizedBox(
        width: width,
        child: Text(
          label,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
