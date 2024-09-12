part of 'package:quran/src/config/themes/app_themes.dart';

const kPrimaryColor = Color.fromARGB(255, 120, 97, 177);
const kThirdColor = Color(0xff3D2C98);
const kIconColor = Color(0xff484b53);
const kSecondPrimaryColor = Color(0xffF46C34);
const kSecondaryColor = Color(0xff959595);
const kHoverColor = Color(0xff8B6AB8);
const kPressColor = Color(0xff533280);
const klight = Color(0xff43466E);
const klighter = Color(0xff6E78B3);

const kSuccessColor = Color(0xff7DB343);
const kWarningColor = Color.fromARGB(255, 237, 165, 40);
const kErrorColor = Color.fromARGB(255, 217, 112, 112);
const kInfoColor = Color(0xff409EFF);

const kBackgroundColor = Color.fromARGB(255, 250, 239, 222);
const kOnBackgroundColor = Color.fromARGB(255, 83, 118, 122);
const kDarkColor = Color(0xff15181C);
const kSelectedItemColor = Color(0xff4D5177);
const kDrawerColor = Color(0xff1e3e52);
const kTextHintColor = Color(0xff848389);
const kDarkerTextHintColor = Color(0xff888888);
const kTextPrimaryColor = Color(0xff030305);
const kDividerColor = Color(0xffdddddd);

const kPrimaryGradient = LinearGradient(
  begin: Alignment(.3, 1),
  end: Alignment(-.3, -1),
  stops: [0, .01, .35, .64, .86, 1],
  colors: [
    Color(0xff3D2C98),
    Color(0xff3F2C99),
    Color(0xff7838C4),
    Color(0xffA241E3),
    Color(0xffBC46F6),
    Color(0xffC548FD),
  ],
);

const Gradient kBackgroundGradient = SweepGradient(
  colors: [
    Color(0xff061a1a),
    Color(0xff041c1e),
    Color(0xff103b41),
    Color(0xff061a1a),
  ],
);

const kSeconderyGradientColors = [
  Color(0xffFA6B49),
  Color(0xffFEB749),
];

const ColorScheme colorScheme = ColorScheme.light(
  primary: kPrimaryColor,
  secondary: kSecondaryColor,
  surface: kBackgroundColor,
);
