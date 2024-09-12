import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/injection/main_modules_providers.dart';

class AyahRemoteDataSource {
  AyahRemoteDataSource(this.ref);
  final Ref ref;

  Future<Either<DioException, Response<ResponseBody>>> getDataFromServer({
    required String audioLink,
    required String path,
  }) async {
    return await ref
        .read(dioProvider)
        .downloadUri(
          Uri.parse(audioLink),
          path,
          options: Options(
            sendTimeout: const Duration(seconds: 4),
            receiveTimeout: const Duration(seconds: 5),
          ),
        )
        .then((value) {
      return right(value as Response<ResponseBody>);
    });
  }
}
