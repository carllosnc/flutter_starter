import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '/domain/migrations/user_local.table.dart';

part 'local_database.g.dart';

@DriftDatabase(tables: [UserLocal])
class LocalDatabase extends _$LocalDatabase {
  static final LocalDatabase _instance = LocalDatabase._();

  LocalDatabase._() : super(_openConnection());

  factory LocalDatabase() {
    return _instance;
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
