import 'package:database_service/database_service.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

class SurahLocalDataSource extends DatabaseCommonOperations<Surah> {

  SurahLocalDataSource(this.dbService)
      : super(
          boxName: 'SurahDataSource',
          databaseService: dbService,
        );
  final DatabaseService dbService;
}
