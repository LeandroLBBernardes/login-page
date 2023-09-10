import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page/widgets/text_button_default.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Esqueceu sua senha?'),
        TextButtonDefault(
          text: 'Clique aqui',
          action: () => context.go('/home'),
        )
      ],
    );
  }
}