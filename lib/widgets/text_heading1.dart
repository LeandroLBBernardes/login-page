import 'package:flutter/material.dart';

class TextH1 extends StatelessWidget {
  final String title;

  const TextH1({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}