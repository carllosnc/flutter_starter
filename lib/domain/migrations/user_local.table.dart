import 'package:drift/drift.dart';

class UserLocal extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 3, max: 32)();
}
