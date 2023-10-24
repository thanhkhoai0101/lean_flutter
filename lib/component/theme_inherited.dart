import 'package:flutter/material.dart';
import 'package:login_flutter/theme/theme_manager.dart';

class ThemeInherited extends InheritedWidget {
  const ThemeInherited({
    super.key,
    required Widget child, required this.themeManager
  }) : super(child: child);
final ThemeManager themeManager;
  static ThemeInherited of(BuildContext context) {
    final ThemeInherited? result =
        context.dependOnInheritedWidgetOfExactType<ThemeInherited>();
    assert(result != null, 'No ThemeInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ThemeInherited old) {
    return true;
  }
}
