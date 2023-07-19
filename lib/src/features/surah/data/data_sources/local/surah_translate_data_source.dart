import 'package:database_service/database_service.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

class SurahTranslateLocalDataSource extends DatabaseCommonOperations<Surah> {
  final DatabaseService dbService;

  SurahTranslateLocalDataSource(this.dbService)
      : super(
          boxName: 'SurahTranslateDataSource',
          databaseService: dbService,
        );
}
