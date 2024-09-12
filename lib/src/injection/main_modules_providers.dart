import 'package:dio/dio.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/core/core.dart';
import 'package:quran/src/core/network/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'main_modules_providers.g.dart';

@Riverpod(keepAlive: true)
Talker talker(TalkerRef ref) {
  return TalkerFlutter.init();
}

@Riverpod(keepAlive: true)
AppHelper appHelper(AppHelperRef ref) {
  return AppHelper(ref);
}

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter();
}

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = ref.read(apiClientProvider).initDio();
  return dio;
}

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) {
  return ApiClient(ref);
}

@Riverpod(keepAlive: true)
AudioPlayer audioPlayer(AudioPlayerRef ref) {
  return AudioPlayer();
}

@Riverpod(keepAlive: true)
FormValidators formValidators(FormValidatorsRef ref) {
  return FormValidators();
}
