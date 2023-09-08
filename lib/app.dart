import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_page/router/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'constants/enums/styles/colors_enum.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MaterialApp.router(
        title: 'Login Page',
        
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,

        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: HexColor(ColorStyles.black.hexCode)
          ),
          scaffoldBackgroundColor: HexColor(ColorStyles.background.hexCode),
          fontFamily: 'Poppins',
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: HexColor(ColorStyles.black.hexCode),
            )
          ),
        ),
      
        debugShowCheckedModeBanner: false,
        routerConfig: routes,
      ),
    );
    
  }
}