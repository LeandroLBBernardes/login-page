import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/enums/styles/colors_enum.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}