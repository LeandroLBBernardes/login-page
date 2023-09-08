enum ColorStyles { 
  red(hexCode: '#E52E4D'), 
  black(hexCode: '#24252A'),
  purple(hexCode: '#5429CC'),
  background(hexCode: '#F0F2F5');

  const ColorStyles({required this.hexCode});

  final String hexCode;
}