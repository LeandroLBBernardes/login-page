import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/enums/styles/colors_enum.dart';

class PasswordTextField extends StatelessWidget {
  final String hintText;
  final String labelText;

  const PasswordTextField({
    Key? key,
    required this.hintText,
    this.labelText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8,),
        if (labelText.isNotEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText, 
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        const SizedBox(height: 5,),
        SizedBox(
          height: 44,
          child: TextField(
            obscureText: true,
            textAlignVertical: TextAlignVertical.center,
            cursorColor: HexColor(ColorStyles.black.hexCode),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1, 
                  color: HexColor(ColorStyles.black.hexCode)
                ),
              ),
              border: const OutlineInputBorder(),
              hintText: hintText,
              labelStyle: TextStyle(
                color: HexColor(ColorStyles.black.hexCode)
              ),
            ),
            style: const TextStyle(fontSize: 14)
          ),
        ),
        const SizedBox(height: 8,)
      ],
    );
  }
}