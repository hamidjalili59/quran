// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quran/src/features/surah/domain/models/current_surah.dart';
// import 'package:quran/src/features/surah/domain/models/surah_model.dart';
// import 'package:quran/src/injectable/injectable.dart';
// import 'package:quran/src/peresentation/ayah/bloc/ayah_voice_controller/ayah_voice_controller_bloc.dart';

// class AyahVoiceWidget extends StatelessWidget {
//   const AyahVoiceWidget({
//     required this.link,
//     super.key,
//     this.ayahNumber,
//     this.surah,
//     this.translate,
//   });
//   final String? link;
//   final int? ayahNumber;
//   final Surah? surah;
//   final Surah? translate;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AyahVoiceControllerBloc, AyahVoiceControllerState>(
//       bloc: getIt.get<AyahVoiceControllerBloc>(),
//       builder: (context, state) {
//         return SizedBox(
//           width: 185.w,
//           height: 50.h,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(
//                 Icons.skip_previous_rounded,
//                 color: Colors.white,
//                 size: 46.r,
//               ),
//               InkWell(
//                 onTap: () {
//                   getIt.get<AyahVoiceControllerBloc>().state.maybeWhen(
//                     orElse: () {
//                       try {
//                         if (getIt.isRegistered<CurrentSurah>(
//                           instanceName: 'ayahaudio',
//                         )) {
//                           getIt
//                             ..unregister<CurrentSurah>(
//                               instanceName: 'ayahaudio',
//                             )
//                             ..registerSingleton<CurrentSurah>(
//                               CurrentSurah(
//                                 currentAyah: ayahNumber!,
//                                 surah: surah,
//                                 audioLink: link!,
//                                 translate: translate,
//                               ),
//                               instanceName: 'ayahaudio',
//                             );
//                         } else {
//                           getIt.registerSingleton<CurrentSurah>(
//                             CurrentSurah(
//                               currentAyah: ayahNumber!,
//                               surah: surah,
//                               audioLink: link!,
//                               translate: translate,
//                             ),
//                             instanceName: 'ayahaudio',
//                           );
//                         }
//                       } catch (_) {}
//                       getIt.get<AyahVoiceControllerBloc>().add(
//                             AyahVoiceControllerEvent.playAyah(
//                               CurrentSurah(
//                                 currentAyah: ayahNumber!,
//                                 surah: surah,
//                                 audioLink: link!,
//                                 translate: translate,
//                               ),
//                             ),
//                           );
//                     },
//                     playingAudio: () {
//                       getIt
//                           .get<AyahVoiceControllerBloc>()
//                           .add(const AyahVoiceControllerEvent.stopAyah());
//                     },
//                   );
//                 },
//                 child: Icon(
//                   getIt.get<AyahVoiceControllerBloc>().state.maybeWhen(
//                     orElse: () {
//                       return Icons.play_arrow_rounded;
//                     },
//                     getAudioSuccess: () {
//                       return Icons.abc;
//                     },
//                     playingAudio: () {
//                       return Icons.stop_rounded;
//                     },
//                   ),
//                   color: Colors.white,
//                   size: 46.r,
//                 ),
//               ),
//               Icon(
//                 Icons.skip_next_rounded,
//                 color: Colors.white,
//                 size: 46.r,
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
