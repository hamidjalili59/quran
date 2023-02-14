// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/src/config/constants/general_constants.dart';
import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/surah/bloc/surah_bloc.dart';

class SurahPage extends StatelessWidget {
  SurahPage({super.key});

  final SurahBloc _surahBloc = getIt.get<SurahBloc>();
  final AppRouter _appRouter = getIt.get<AppRouter>();
  // final int _currentAyah = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<SurahBloc>(
        create: (context) => _surahBloc,
        child: Scaffold(
          body: Container(
            color: Colors.transparent,
            height: 1.sh,
            width: 1.sw,
            child: Stack(
              children: [
                Positioned.fill(
                  child: BlocConsumer<SurahBloc, SurahState>(
                    bloc: _surahBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        failure: (failure, message) {},
                        getSurahSuccess: (surah) {},
                        idle: (isLoading) {
                          if (!isLoading) {
                            _surahBloc.add(SurahEvent.getSurah(
                                GeneralConstants.surahNumber));
                          }
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        ayahIndex: (currentAyah, surah) {
                          return InkWell(
                            onTap: () {
                              currentAyah < surah.ayahs!.length - 1
                                  ? _surahBloc.add(
                                      SurahEvent.changeAyah(currentAyah + 1))
                                  : _appRouter.pop();
                            },
                            child: Container(
                              width: 1.sw,
                              height: 1.sh,
                              color: Colors.transparent,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0.h, horizontal: 20.w),
                                  child: Text(
                                    surah!.ayahs!
                                        .toList()[currentAyah]
                                        .text
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 22.r,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        backgroundColor: Colors.white70),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        getSurahSuccess: (surah) {
                          _surahBloc.add(const SurahEvent.changeAyah(0));
                          return Container(
                            width: 1.sw,
                            height: 1.sh,
                            color: Colors.transparent,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0.h, horizontal: 20.w),
                                child: Text(
                                  surah!.ayahs!.toList()[0].text.toString(),
                                  style: TextStyle(
                                      fontSize: 22.r,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      backgroundColor: Colors.white70),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                          );
                        },
                        //
                        idle: (isLoading) {
                          if (isLoading) {
                            return Container(
                              alignment: Alignment.center,
                              width: 1.sw,
                              height: 1.sh,
                              color: Colors.white,
                              child: const SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  color: Colors.greenAccent,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            );
                          } else {
                            _surahBloc.add(SurahEvent.getSurah(
                                GeneralConstants.surahNumber));
                            return Container(
                              alignment: Alignment.center,
                              width: 1.sw,
                              height: 1.sh,
                              color: Colors.white,
                              child: Text(
                                'چیزی برای نمایش وجود ندارد',
                                style: TextStyle(
                                  fontSize: 26.r,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }
                        },
                        //
                        failure: (failure, message) {
                          return Container(
                              width: 1.sw,
                              height: 1.sh,
                              color: Colors.white,
                              child: Text(
                                message,
                                style: TextStyle(
                                  fontSize: 26.r,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ));
                        },
                        orElse: () {
                          return Container(
                            width: 1.sw,
                            height: 1.sh,
                            color: Colors.white,
                            child: Text(
                              'اینجا قراره هر سوره پیاده بشه',
                              style: TextStyle(
                                fontSize: 26.r,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 50,
                  right: 10,
                  left: 10,
                  child: BlocBuilder<SurahBloc, SurahState>(
                    bloc: _surahBloc,
                    builder: (context, state) {
                      return state.maybeWhen(
                        ayahIndex: (currentAyah, surah) {
                          return SizedBox(
                            width: 0.9.sw,
                            height: 0.11.sh,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 180.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(26.r),
                                            topRight: Radius.circular(26.r)),
                                        color: Colors.blueGrey.withOpacity(0.3),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 0.05.sw,
                                          ),
                                          Text(
                                            '$currentAyah / ${surah!.ayahs!.length - 1}',
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 16.r,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Icon(
                                            Icons.play_arrow_rounded,
                                            color: Colors.white,
                                            size: 36.r,
                                          ),
                                          SizedBox(
                                            width: 0.05.sw,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.blueGrey.withOpacity(0.75),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(36.r)),
                                      ),
                                      width: 0.9.sw,
                                      height: 0.06.sh,
                                      child: Slider(
                                        value: currentAyah.toDouble(),
                                        onChanged: (value) {},
                                        min: 0,
                                        max: (surah.ayahs!.length - 1)
                                            .toDouble(),
                                        inactiveColor: Colors.black,
                                        thumbColor: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        //

                        //

                        getSurahSuccess: (surah) {
                          // _surahBloc.add(const SurahEvent.changeAyah(0));
                          return SizedBox(
                            width: 0.9.sw,
                            height: 0.11.sh,
                            child: const Text('با موفق دریافت شد'),
                          );
                        },
                        orElse: () {
                          return const SizedBox();
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
