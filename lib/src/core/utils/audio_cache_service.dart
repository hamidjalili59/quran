import 'dart:io';
import 'package:dio/dio.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quran/src/core/constants/general_constants.dart';

class AudioCacheService {
  late final AudioPlayer _audioPlayer;
  late final Dio _dio;

  Future<void> playAyah(int surahNumber, int ayahNumber) async {
    final String fileName = 'surah_${surahNumber}_ayah_$ayahNumber.mp3';
    final String filePath = await _getFilePath(fileName);

    if (await File(filePath).exists()) {
      // پخش از حافظه دستگاه
      await _audioPlayer.setFilePath(filePath);
    } else {
      // دانلود و پخش
      final url = '${baseUrl}ayah/$surahNumber:$ayahNumber/ar.alafasy';
      final response = await _dio.get<Map<String, dynamic>>(url);
      final audioUrl =
          (response.data?['data'] as Map<String, dynamic>)['audio'] as String;

      await _downloadAndSaveFile(audioUrl, filePath);
      await _audioPlayer.setFilePath(filePath);
    }

    await _audioPlayer.play();
  }

  Future<String> _getFilePath(String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    return '${dir.path}/$fileName';
  }

  Future<void> _downloadAndSaveFile(String url, String filePath) async {
    await _dio.download(url, filePath);
  }
}
