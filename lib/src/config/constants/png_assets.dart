class PngAssets {
  const PngAssets._();

  static String get logo => 'icon'.png;
  static String get qari1 => '1'.png;
  static String get qari2 => 'abdolbaset'.png;
  static String get qari3 => 'minshawi'.png;
  static String get background => 'background'.jpg;
  static String get waveform => 'wave_form'.png;
}

extension on String {
  String get png => 'assets/images/$this.png';
  String get jpg => 'assets/images/$this.jpg';
}
