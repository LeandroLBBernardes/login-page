import 'package:flutter/material.dart';
import 'package:login_page/widgets/text_heading1.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/button_default.dart';
import '../widgets/forget_password.dart';
import '../widgets/text_button_default.dart';
import '../widgets/textfield_email.dart';
import '../widgets/textfield_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextH1(title: AppLocalizations.of(context)!.login),
            const EmailTextField(
              hintText: 'Digite seu email',
              labelText: 'Email:',
            ),
            const PasswordTextField(
              hintText: 'Digite sua senha',
              labelText: 'Senha:',
            ),
            DefaultButton(
              text: AppLocalizations.of(context)!.login_button, 
              action: (){}
            ),
            const ForgetPasswordWidget(),
            const TextButtonDefault(
              text: 'Cadastrar',
            ),
          ],
        ),
      ),
    );
  }
}

