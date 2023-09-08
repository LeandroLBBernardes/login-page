import 'package:login_page/constants/enums/styles/colors_enum.dart';

enum ButtonType {
  primary(color: ColorStyles.black),
  danger(color: ColorStyles.red);

  const ButtonType({required this.color});

  final ColorStyles color;
}