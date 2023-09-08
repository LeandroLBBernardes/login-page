import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_page/constants/enums/styles/button_types_enum.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() action;
  final ButtonType buttonType;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.action,
    this.buttonType = ButtonType.primary
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizedScreen = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const SizedBox(height: 8,),
        SizedBox(
          height: 44,
          width: sizedScreen,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                HexColor(buttonType.color.hexCode)
              ),
            ),
            onPressed: action, 
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            )
          ),
        ),
        const SizedBox(height: 8,)
      ],
    );
  }
}