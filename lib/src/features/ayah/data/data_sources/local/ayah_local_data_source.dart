import 'dart:io';
import 'package:database_service/database_service.dart';

class AyahLocalDataSource extends DatabaseCommonOperations<File> {

  AyahLocalDataSource(this.dbService)
      : super(
          boxName: 'AyahDataSource',
          databaseService: dbService,
        );
  final DatabaseService dbService;
}
