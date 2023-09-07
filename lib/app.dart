import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_page/router/routes.dart';

import 'constants/enums/styles/colors_enum.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Login Page',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: HexColor(ColorStyles.black.hexCode)
        ),
        scaffoldBackgroundColor: HexColor(ColorStyles.background.hexCode)
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
    );
  }
}