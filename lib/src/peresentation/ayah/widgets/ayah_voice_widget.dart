import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/ayah/bloc/ayah_voice_controller/ayah_voice_controller_bloc.dart';

class AyahVoiceWidget extends StatelessWidget {
  final String? link;
  final int? ayahNumber;
  final Surah? surah;
  const AyahVoiceWidget(
      {super.key, required this.link, this.ayahNumber, this.surah});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AyahVoiceControllerBloc, AyahVoiceControllerState>(
      bloc: getIt.get<AyahVoiceControllerBloc>(),
      builder: (context, state) {
        return SizedBox(
          width: 185.w,
          height: 50.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.skip_previous_rounded,
                color: Colors.white,
                size: 46.r,
              ),
              InkWell(
                onTap: () {
                  getIt.get<AyahVoiceControllerBloc>().add(
                        AyahVoiceControllerEvent.playAyah(
                          ayahNumber!,
                          surah!,
                          link!,
                        ),
                      );
                },
                child: Icon(
                  getIt.get<AyahVoiceControllerBloc>().state.maybeWhen(
                    orElse: () {
                      return Icons.play_arrow_rounded;
                    },
                    getAudioSuccess: () {
                      return Icons.abc;
                    },
                    playingAudio: () {
                      return Icons.stop_rounded;
                    },
                  ),
                  color: Colors.white,
                  size: 46.r,
                ),
              ),
              Icon(
                Icons.skip_next_rounded,
                color: Colors.white,
                size: 46.r,
              ),
            ],
          ),
        );
      },
    );
  }
}
