import 'package:flutter/cupertino.dart';

import 'data/data.dart';

class GITTheme extends InheritedWidget {
  const GITTheme({
    required super.child,
    required this.themeData,
    super.key,
  });

  final UIThemeData themeData;

  @override
  bool updateShouldNotify(covariant GITTheme oldWidget) {
    return oldWidget.themeData != themeData;
  }

  static UIThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GITTheme>()!.themeData;
  }
}
