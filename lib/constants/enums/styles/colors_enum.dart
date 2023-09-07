enum ColorStyles { 
  red(hexCode: '#E52E4D'), 
  black(hexCode: '#24252A'),
  background(hexCode: '#F0F2F5');

  const ColorStyles({required this.hexCode});

  final String hexCode;

}

// extension ColorHexCode on ColorStyles{
//   String get code {
//     switch(this) {
//       case ColorStyles.red:
//         return '#E52E4D';
//       case ColorStyles.black:
//         return '#24252A';
//       case ColorStyles.background:
//         return '#F0F2F5';
//     }
//   }
// }