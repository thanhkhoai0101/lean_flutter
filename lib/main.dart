import 'package:flutter/material.dart';
import 'package:login_flutter/component/theme_inherited.dart';
import 'package:login_flutter/page/login_page.dart';
import 'package:login_flutter/theme/theme_constaints.dart';
import 'package:login_flutter/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose() {
    // TODO: implement dispose
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // ẩn dấu debug ở trên góc màn hình
        debugShowCheckedModeBanner: false,

        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _themeManager.themeMode,

        // khở tạo theme inherited
        // nó sẽ lưu các trạng thái của tham số truyền vào,
        home: ThemeInherited(themeManager: _themeManager, child: const LoginPage()));
  }
}
