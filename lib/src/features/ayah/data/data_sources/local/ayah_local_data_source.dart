import 'dart:io';
import 'package:database_service/database_service.dart';

class AyahLocalDataSource extends DatabaseCommonOperations<File> {
  final DatabaseService dbService;

  AyahLocalDataSource(this.dbService)
      : super(
          boxName: 'AyahDataSource',
          databaseService: dbService,
        );
}
