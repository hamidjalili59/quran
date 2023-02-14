// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/home/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeBloc _homeBloc = getIt.get<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<HomeBloc>(
          create: (_) => _homeBloc,
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: BlocBuilder<HomeBloc, HomeState>(
                bloc: _homeBloc,
                builder: (context, state) {
                  print(state.toString());
                  return state.maybeWhen(
                    dataIsAvailableInStorage: (listSurahs) {
                      if (listSurahs!.listSurahs!.isEmpty) {
                        _homeBloc.add(const HomeEvent.getHomeSurahs());
                      }
                      return ListView.builder(
                        itemCount: listSurahs.listSurahs!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () =>
                                _homeBloc.add(HomeEvent.openOneSurah(index)),
                            child: Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black26,
                                ),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 0.2.sw,
                                      child: Text(
                                        (listSurahs.listSurahs![index].number ??
                                                0)
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 16.r,
                                            color: Colors.black),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.6.sw,
                                      child: Text(
                                        listSurahs.listSurahs![index].name!,
                                        style: TextStyle(
                                            fontSize: 16.r,
                                            color: Colors.black),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ]),
                            ),
                          );
                        },
                      );
                    },
                    getSurahsSuccess: (listSurahs) {
                      return ListView.builder(
                        itemCount: listSurahs!.listSurahs!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () =>
                                _homeBloc.add(HomeEvent.openOneSurah(index)),
                            child: Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black26,
                                ),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 0.2.sw,
                                      child: Text(
                                        (listSurahs.listSurahs![index].number ??
                                                0)
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 16.r,
                                            color: Colors.black),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.6.sw,
                                      child: Text(
                                        listSurahs.listSurahs![index].name!,
                                        style: TextStyle(
                                            fontSize: 16.r,
                                            color: Colors.black),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ]),
                            ),
                          );
                        },
                      );
                    },
                    idle: (isLoading) {
                      _homeBloc.add(const HomeEvent.checkDataIsAvailable());
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
                    },
                    failure: (failure, message) {
                      return Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 0.9.sw,
                          height: 0.9.sh,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'سوره ها در حافظه موجود نبود\nلطفا دوباره سعی کنید',
                                style: TextStyle(
                                  fontSize: 26.r,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 25),
                              InkWell(
                                onTap: () {
                                  _homeBloc.add(
                                    const HomeEvent.getHomeSurahs(),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 120.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color:
                                        const Color.fromARGB(255, 54, 89, 244),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.restart_alt_rounded,
                                        color: Colors.white,
                                        size: 26.r,
                                      ),
                                      Text(
                                        'سعی مجدد',
                                        style: TextStyle(
                                          fontSize: 16.r,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 5.w),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox();
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }
}
