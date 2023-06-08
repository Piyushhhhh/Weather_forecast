import 'package:fire_weather/core/routes/routes.dart';
import 'package:fire_weather/core/themes/theme_data.dart';
import 'package:flutter/material.dart';

import 'core/constants/string_const.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.themeSeed,
      // darkTheme: ThemeConfig.darkTheme,
      // themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      onGenerateRoute: routes,
    );
  }
}
