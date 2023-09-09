import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/src/config/constants/general_constants.dart';
import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/ayah/widgets/ayah_voice_home_card_widget.dart';
import 'package:quran/src/peresentation/home/bloc/home_bloc.dart';

@RoutePage(name: 'home')
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: GeneralConstants.gradient),
          child: ColoredBox(
            color: const Color(0x851c3729),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: BlocBuilder(
                bloc: getIt.get<HomeBloc>(),
                builder: (context, state) {
                  return getIt.get<HomeBloc>().state.maybeWhen(
                        orElse: SizedBox.new,
                        dataIsAvailableInStorage: (listSurahs) {
                          return CustomScrollView(
                            slivers: [
                              SliverAppBar(
                                automaticallyImplyLeading: false,
                                backgroundColor: Colors.transparent,
                                expandedHeight: 356.h,
                                flexibleSpace: FlexibleSpaceBar(
                                  background: Column(
                                    children: [
                                      SizedBox(
                                        width: 0.85.sw,
                                        height: 70.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const CircleAvatar(
                                              child: Icon(Icons.person_rounded),
                                            ),
                                            Text(
                                              'قرآن کریم',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontFamily: 'AlQalamNew',
                                                fontSize: 28.sp,
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black
                                                        .withOpacity(0.5),
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffD9D9D9)
                                              .withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(26.r),
                                        ),
                                        width: 340.w,
                                        height: 50.h,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0.w),
                                                child: SizedBox(
                                                  child: Icon(
                                                    Icons.search_rounded,
                                                    size: 36.r,
                                                    color: Colors.white38,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 12,
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0.r),
                                                child: SizedBox(
                                                  child: TextField(
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    decoration: InputDecoration(
                                                      floatingLabelAlignment:
                                                          FloatingLabelAlignment
                                                              .center,
                                                      hintText: 'Search',
                                                      alignLabelWithHint: true,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 5.h,
                                                        horizontal: 16.w,
                                                      ),
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                        color: Colors.white24,
                                                        fontFamily:
                                                            'Ordibehesht',
                                                        fontSize: 26.sp,
                                                      ),
                                                    ),
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontFamily: 'Ordibehesht',
                                                      fontSize: 22.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 25.h),
                                      PlaySurahCardWidget(
                                        surahs: listSurahs!,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SliverPersistentHeader(
                                pinned: true,
                                delegate: _SliverAppBarDelegate(
                                  maxHeight: 60,
                                  minHeight: 60,
                                  child: SizedBox(
                                    width: 1.sw,
                                    height: 450.h,
                                    child: Column(
                                      children: [
                                        Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xffd9d9d9)
                                                  .withOpacity(0.3),
                                            ),
                                            width: 1.sw,
                                            height: 55.h,
                                            child: Row(
                                              children: [
                                                SizedBox(width: 20.w),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.all(8.0.r),
                                                  child: Container(
                                                    width: 100.w,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        16.r,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'سوره‌ها',
                                                      style: TextStyle(
                                                        fontSize: 20.sp,
                                                        fontFamily:
                                                            'Ordibehesht',
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 20.w),
                                                Text(
                                                  'علاقه‌مندی ها',
                                                  style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontFamily: 'Ordibehesht',
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                                SizedBox(width: 20.w),
                                                Text(
                                                  'جزء‌ها',
                                                  style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontFamily: 'Ordibehesht',
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                                SizedBox(width: 20.w),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SliverPadding(
                                padding: EdgeInsets.only(bottom: 150.h),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) => SurahTileWidget(
                                      index: index,
                                      surahs: listSurahs,
                                    ),
                                    childCount: listSurahs.listSurahs!.length,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        idle: (isLoading) {
                          return const SizedBox();
                        },
                      );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SurahTileWidget extends StatelessWidget {
  const SurahTileWidget({
    required this.index,
    required this.surahs,
    super.key,
  });
  final int index;
  final ListOfHomeSurah surahs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.0.h, left: 20.w, right: 20.w),
      child: InkWell(
        onTap: () {
          if (getIt.isRegistered<int>(instanceName: 'SurahIndex')) {
            getIt
              ..unregister<int>(instanceName: 'SurahIndex')
              ..registerSingleton<int>(index, instanceName: 'SurahIndex');
          } else {
            getIt.registerSingleton<int>(index, instanceName: 'SurahIndex');
          }
          getIt.get<HomeBloc>().add(HomeEvent.openOneSurah(index));
        },
        child: Container(
          width: 0.8.sw,
          height: 100.h,
          decoration: BoxDecoration(
            // color: Color(0xffd9d9d9).withOpacity(0.35),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: const Color(0xffd9d9d9).withOpacity(0.35),
              width: 1.w,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${surahs.listSurahs![index].numberOfAyahs ?? 0} آیه',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: 'Ordibehesht',
                        color: Colors.white70,
                      ),
                    ),
                    Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white70,
                      size: 36.r,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(26.0.r),
                child: Text(
                  surahs.listSurahs![index].name ?? '',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: 'AlQalamNew',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
