import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/enums/styles/colors_enum.dart';

class TextButtonDefault extends StatelessWidget {
  final String text;
  final Function()? action;

  const TextButtonDefault({
    Key? key,
    required this.text,
    this.action 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action, 
      style: TextButton.styleFrom(
        foregroundColor: HexColor(ColorStyles.purple.hexCode) // Text Color
      ),
      child: Text(
        text,
        style: TextStyle(
          color: HexColor(ColorStyles.purple.hexCode),
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}