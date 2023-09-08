import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_page/constants/enums/styles/colors_enum.dart';
import 'package:login_page/widgets/text_heading1.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/button_default.dart';
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
        padding: const EdgeInsets.all(36),
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
            Center(
              child: Row(
                children: [
                  const Text('Esqueceu sua senha?'),
                  TextButton(
                    onPressed: (){}, 
                    style: TextButton.styleFrom(
                      foregroundColor: HexColor(ColorStyles.purple.hexCode) // Text Color
                    ),
                    child: Text(
                      'Clique aqui',
                      style: TextStyle(
                        color: HexColor(ColorStyles.purple.hexCode),
                        fontWeight: FontWeight.bold
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

