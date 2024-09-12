// // ignore_for_file: lines_longer_than_80_chars

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quran/src/config/constants/png_assets.dart';
// import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';
// import 'package:quran/src/features/surah/domain/models/current_surah.dart';
// import 'package:quran/src/injectable/injectable.dart';
// import 'package:quran/src/peresentation/ayah/bloc/ayah_voice_controller/ayah_voice_controller_bloc.dart';
// import 'package:quran/src/peresentation/surah/bloc/surah_bloc.dart';

// class PlaySurahCardWidget extends StatelessWidget {
//   const PlaySurahCardWidget({
//     required this.surahs,
//     super.key,
//   });
//   final ListOfHomeSurah surahs;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder(
//       bloc: getIt.get<AyahVoiceControllerBloc>(),
//       builder: (context, state) {
//         return SizedBox(
//           width: 340.w,
//           height: 160.h,
//           child: Stack(
//             children: [
//               Positioned(child: Image.asset(PngAssets.qari2)),
//               Positioned(
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     width: 340.w,
//                     height: 130.h,
//                     decoration: BoxDecoration(
//                       color: const Color(0xffd9d9d9).withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(18.r),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 115.0.w),
//                       child: SizedBox(
//                         child: Column(
//                           children: [
//                             SizedBox(height: 10.h),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   flex: 4,
//                                   child: Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {
//                                           try {
//                                             getIt
//                                                 .get<AyahVoiceControllerBloc>()
//                                                 .state
//                                                 .maybeWhen(
//                                               orElse: () {
//                                                 if (getIt
//                                                     .isRegistered<CurrentSurah>(
//                                                   instanceName: 'ayahaudio',
//                                                 )) {
//                                                   final audioData =
//                                                       getIt.get<CurrentSurah>(
//                                                     instanceName: 'ayahaudio',
//                                                   );
//                                                   getIt
//                                                       .get<
//                                                           AyahVoiceControllerBloc>()
//                                                       .add(
//                                                         AyahVoiceControllerEvent
//                                                             .playAyah(
//                                                           audioData,
//                                                         ),
//                                                       );
//                                                 }
//                                               },
//                                               playingAudio: () {
//                                                 getIt
//                                                     .get<
//                                                         AyahVoiceControllerBloc>()
//                                                     .add(
//                                                       const AyahVoiceControllerEvent
//                                                           .stopAyah(),
//                                                     );
//                                               },
//                                             );
//                                           } catch (_) {}
//                                         },
//                                         child: SizedBox(
//                                           width: 20.w,
//                                           child: Icon(
//                                             getIt
//                                                 .get<AyahVoiceControllerBloc>()
//                                                 .state
//                                                 .maybeWhen(
//                                               orElse: () {
//                                                 return Icons.play_arrow_rounded;
//                                               },
//                                               getAudioSuccess: () {
//                                                 return Icons.abc;
//                                               },
//                                               playingAudio: () {
//                                                 return Icons.stop_rounded;
//                                               },
//                                             ),
//                                             color: Colors.white,
//                                             size: 40.r,
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(width: 25.w),
//                                       SizedBox(
//                                         width: 20.w,
//                                         child: Icon(
//                                           Icons.skip_next_rounded,
//                                           color: Colors.white,
//                                           size: 40.r,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 6,
//                                   child: Padding(
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 16.0.w,
//                                     ),
//                                     child: SizedBox(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                         children: [
//                                           if (getIt.isRegistered<int>(
//                                             instanceName: 'SurahIndex',
//                                           ))
//                                             Text(
//                                               getIt
//                                                   .get<SurahBloc>()
//                                                   .state
//                                                   .maybeWhen(
//                                                     orElse: () =>
//                                                         'سُورَةُ ٱلْفَاتِحَةِ',
//                                                     ayahIndex: (
//                                                       currentAyah,
//                                                       surah,
//                                                       translate,
//                                                     ) =>
//                                                         '${surah!.name}',
//                                                   ),
//                                               overflow: TextOverflow.ellipsis,
//                                               maxLines: 1,
//                                               textDirection: TextDirection.rtl,
//                                               style: TextStyle(
//                                                 fontSize: 20.sp,
//                                                 fontWeight: FontWeight.w400,
//                                                 fontFamily: 'AlQalamNew',
//                                                 color: Colors.white,
//                                               ),
//                                             )
//                                           else
//                                             Text(
//                                               'سُورَةُ ٱلْفَاتِحَةِ',
//                                               style: TextStyle(
//                                                 fontSize: 20.sp,
//                                                 fontFamily: 'AlQalamNew',
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           if (getIt.isRegistered<int>(
//                                             instanceName: 'SurahIndex',
//                                           ))
//                                             Text(
//                                               'آیه ${getIt.get<SurahBloc>().state.maybeWhen(
//                                                 orElse: () {
//                                                   return '1';
//                                                 },
//                                                 ayahIndex: (
//                                                   currentAyah,
//                                                   surah,
//                                                   translate,
//                                                 ) {
//                                                   return '$currentAyah';
//                                                 },
//                                               )}',
//                                               style: TextStyle(
//                                                 fontSize: 20.sp,
//                                                 fontFamily: 'Ordibehesht',
//                                                 color: Colors.white38,
//                                               ),
//                                             )
//                                           else
//                                             Text(
//                                               'آیه 1',
//                                               style: TextStyle(
//                                                 fontSize: 20.sp,
//                                                 fontFamily: 'Ordibehesht',
//                                                 color: Colors.white38,
//                                               ),
//                                             ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 45.h,
//                               width: 160.w,
//                               child: Image.asset(
//                                 PngAssets.waveform,
//                                 fit: BoxFit.fill,
//                                 color: Colors.white70,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
