import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndialog/ndialog.dart';
import 'package:quran/src/config/constants/general_constants.dart';
import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/home/bloc/home_bloc.dart';

@RoutePage(name: 'splash')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return BlocProvider(
      create: (_) => getIt.get<HomeBloc>(),
      child: Scaffold(
        body: BlocConsumer(
          bloc: getIt.get<HomeBloc>(),
          listener: (context, state) {
            getIt.get<HomeBloc>().state.maybeWhen(
                  orElse: () {},
                  idle: (isLoading) {},
                  dataIsAvailableInStorage: (listSurahs) {
                    getIt.get<AppRouter>().replaceNamed('/home');
                  },
                  failure: (failure, message) {
                    if (message == 'No Internet') {
                      NDialog(
                        content: SizedBox(
                          width: 0.4.sw,
                          height: 80.h,
                          child: const Center(
                            child: Text('No Internet'),
                          ),
                        ),
                      ).show<void>(context);
                    }
                    getIt.get<HomeBloc>().add(
                          const HomeEvent.getHomeSurahs(),
                        );
                  },
                  getSurahsSuccess: (listSurahs) {
                    getIt
                        .get<HomeBloc>()
                        .add(const HomeEvent.checkDataIsAvailable());
                  },
                );
          },
          builder: (context, state) {
            return getIt.get<HomeBloc>().state.maybeWhen(
              orElse: () {
                return Container(
                  width: 1.sw,
                  height: 1.sh,
                  decoration:
                      BoxDecoration(gradient: GeneralConstants.gradient),
                  child: ColoredBox(
                    color: const Color(0x851c3729),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2,
                        sigmaY: 2,
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
              failure: (failure, message) {
                return Container(
                  width: 1.sw,
                  height: 1.sh,
                  decoration:
                      BoxDecoration(gradient: GeneralConstants.gradient),
                  child: ColoredBox(
                    color: const Color(0x851c3729),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2,
                        sigmaY: 2,
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 0.8.sw,
                          height: 230.h,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(16.r),
                                width: 0.8.sw,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(26.r),
                                ),
                                child: Text(
                                  'داده ها در دستگاه یافت نشد و ارتباط با سرور برقرار نشد لطفا اینترنت خود را بررسی و مجدد تلاش نمایید',
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontFamily: 'Ordibehesht',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 35.h),
                              InkWell(
                                onTap: () {
                                  getIt.get<HomeBloc>().add(
                                        const HomeEvent.checkDataIsAvailable(),
                                      );
                                },
                                child: Container(
                                  width: 110.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(0.75),
                                    borderRadius: BorderRadius.circular(8.r),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white54,
                                        blurRadius: 15,
                                        spreadRadius: 0.1,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'تلاش مجدد',
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontFamily: 'Ordibehesht',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
