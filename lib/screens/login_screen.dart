import 'package:flutter/material.dart';
import 'package:login_page/widgets/text_heading1.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/button_default.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextH1(title: AppLocalizations.of(context)!.login),
              DefaultButton(
                text: AppLocalizations.of(context)!.login_button, 
                action: (){}
              )
            ],
          ),
        )
      ),
    );
  }
}

