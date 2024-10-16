class Responsive {
  static double calculateFontSize(double height, double baseFontSize) {
    return (baseFontSize / height) * height;
  }
}
