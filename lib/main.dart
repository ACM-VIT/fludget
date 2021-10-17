import 'package:fludget/themes/theme_factory.dart';
import 'package:fludget/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = new ThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.theme =
        await themeChangeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<ThemeProvider>(
          builder: (BuildContext context, value, Widget? child) {
        return MaterialApp(
          title: 'Fludget',
          theme: ThemeFactory.getTheme(themeChangeProvider.themeMode),
          home: SplashScreen(),
        );
      }),
    );
  }
}
