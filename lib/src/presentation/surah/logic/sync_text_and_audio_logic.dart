import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sync_text_and_audio_logic.g.dart';

@Riverpod(keepAlive: true)
class SyncTextAndAudio extends _$SyncTextAndAudio {
  @override
  bool build() => true;

  void changeStateValue() {
    state = !state;
  }
}
