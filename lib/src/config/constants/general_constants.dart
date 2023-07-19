import 'package:flutter/material.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

class GeneralConstants {
  static Size defaultDesignSize = const Size(390, 844);
  static double defaultBorderRadius = 10;
  static int currentIndexPage = 0;
  static int surahNumber = 0;
  static Surah currentSurah = Surah();
  static Surah currentSurahTranslate = Surah();
  static String defaultFontName = '';
  static String firstAppbarItem = '';
  static String appbarTitle = 'مدرسه من';
  static const bool isParent = false;
  static const bool isTeacher = false;
  static const bool isAdmin = false;
  static bool didStartSetup = false;

  static Color backgroundColor = const Color.fromARGB(255, 250, 239, 222);
  static Color mainColor = const Color.fromARGB(255, 120, 97, 177);
}
