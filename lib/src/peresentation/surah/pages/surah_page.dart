import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/src/config/constants/general_constants.dart';
import 'package:quran/src/config/constants/png_assets.dart';
import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/ayah/widgets/ayah_voice_widget.dart';
import 'package:quran/src/peresentation/surah/bloc/surah_bloc.dart';

@RoutePage(name: 'surah_masir')
class SurahPage extends StatefulWidget {
  const SurahPage({super.key});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  final SurahBloc _surahBloc = getIt.get<SurahBloc>();

  @override
  void dispose() {
    _surahBloc.close();
    getIt.resetLazySingleton<SurahBloc>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: BoxDecoration(gradient: GeneralConstants.gradient),
          child: ColoredBox(
            color: const Color(0x851c3729),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: BlocProvider<SurahBloc>(
                create: (context) => _surahBloc,
                child: BlocBuilder(
                  bloc: _surahBloc,
                  builder: (context, state) {
                    return _surahBloc.state.maybeWhen(
                      orElse: () {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      },
                      failure: (failure, message) {
                        _surahBloc.add(
                          SurahEvent.getSurah(
                            getIt.get<int>(instanceName: 'SurahIndex'),
                          ),
                        );
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      },
                      ayahIndex: (currentAyah, surah, translate) {
                        return SurahPageViewWidget(
                          bloc: _surahBloc,
                          surah: surah!,
                          translate: translate!,
                          currentAyah: currentAyah,
                        );
                      },
                      getSurahSuccess: (surah, traslate) {
                        return SurahPageViewWidget(
                          surah: surah!,
                          translate: traslate!,
                          bloc: _surahBloc,
                          currentAyah: 0,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SurahPageViewWidget extends StatelessWidget {
  const SurahPageViewWidget({
    required this.surah,
    required this.currentAyah,
    required this.bloc,
    required this.translate,
    super.key,
  });
  final Surah surah;
  final Surah translate;
  final int currentAyah;
  final SurahBloc bloc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: buildProgressIndicator(
              surah.numberOfAyahs!,
              currentAyah,
            ),
          ),
          Positioned(
            bottom: 0.2.sh,
            right: 0,
            left: 0,
            top: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 350.h,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: 0.85.sw,
                        maxWidth: 0.855.sw,
                        minHeight: 10.h,
                        maxHeight: 250.h,
                      ),
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: SingleChildScrollView(
                        child: Text(
                          surah.ayahs![currentAyah].text!,
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.8.sp,
                            fontSize: 26.sp,
                            fontFamily: 'AlQalamNew',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180.h,
                  child: Align(
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: 0.85.sw,
                        maxWidth: 0.855.sw,
                        minHeight: 10.h,
                        maxHeight: 250.h,
                      ),
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: SingleChildScrollView(
                        child: Text(
                          translate.ayahs![currentAyah].text!,
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 22.sp,
                            fontFamily: 'AlQalamNew',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTapUp: (TapUpDetails details) {
                if (details.globalPosition.dx < 0.5.sw) {
                  if (currentAyah >= 1) {
                    bloc.add(
                      SurahEvent.changeAyah(
                        currentAyah - 1,
                        surah,
                        translate: translate,
                      ),
                    );
                  }
                } else {
                  if (currentAyah < surah.numberOfAyahs! - 1) {
                    bloc.add(
                      SurahEvent.changeAyah(
                        currentAyah + 1,
                        surah,
                        translate: translate,
                      ),
                    );
                  } else {
                    getIt.get<AppRouter>().popUntilRouteWithName('Home');
                  }
                }
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0.15.sh,
            child: Column(
              children: [
                AyahVoiceWidget(
                  link: surah.ayahs![currentAyah].audio,
                  ayahNumber: currentAyah,
                  surah: surah,
                  translate: translate,
                ),
                SizedBox(
                  height: 45.h,
                  width: 250.w,
                  child: Image.asset(
                    PngAssets.waveform,
                    fit: BoxFit.fill,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -115,
            left: 0,
            right: 0,
            child: SizedBox(
              width: 1.sw,
              height: 220.h,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 100.w,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Image.asset(PngAssets.qari1),
                        ),
                      ),
                    ),
                    Container(
                      width: 120.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 70.w,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Image.asset(PngAssets.qari2),
                        ),
                      ),
                    ),
                    Container(
                      width: 120.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 95.w,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Image.asset(PngAssets.qari3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildProgressIndicator(int totalAyahs, int currentAyah) {
  final numCubes = totalAyahs > 35 ? 35 : totalAyahs;

// Normalize current ayah to a number between 0 and 35
  final normalizedCurrentAyah = ((currentAyah / totalAyahs) * 35).round();
  final progressIndicators = List<Widget>.generate(numCubes, (index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1),
        height: 2.h,
        decoration: BoxDecoration(
          color: totalAyahs > 35
              ? index < normalizedCurrentAyah
                  ? Colors.white
                  : Colors.white30
              : index < currentAyah
                  ? Colors.white
                  : Colors.white30,
          borderRadius: BorderRadius.circular(2.r),
        ),
      ),
    );
  });

  return Row(children: progressIndicators);
}
