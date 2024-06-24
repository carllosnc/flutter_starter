import 'package:flutter/material.dart';
import './theme_state.dart';

mixin SharedState<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    themeState.addListener(action);
  }

  @override
  void dispose() {
    super.dispose();
    themeState.removeListener(action);
  }

  void action() {
    setState(() {});
  }
}
