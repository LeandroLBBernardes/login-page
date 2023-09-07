enum ColorStyles { 
  red, 
  black,
  background
}

extension ColorHexCode on ColorStyles{
  String get code {
    switch(this) {
      case ColorStyles.red:
        return '#E52E4D';
      case ColorStyles.black:
        return '#24252A';
      case ColorStyles.background:
        return '#F0F2F5';
    }
  }
}