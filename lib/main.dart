import 'package:analog_clock_light_and_dark/models/my_theme_provider.dart';
import 'package:analog_clock_light_and_dark/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
          builder: (context, theme, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Analog clock light and dark theme',
                theme: themeData(context),
                darkTheme: darkThemeData(context),
                themeMode:
                    theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
                home: HomeScreen(),
              )),
    );
  }
}
