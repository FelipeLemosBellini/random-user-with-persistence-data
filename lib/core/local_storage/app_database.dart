import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';

part 'app_database.g.dart';

/// Tabela principal de usuários (chave primária = login.uuid)
class Users extends Table {
  TextColumn get uuid => text()(); // PK (de LoginModel.uuid)
  TextColumn get gender => text()();

  TextColumn get email => text()();

  TextColumn get phone => text()();

  TextColumn get cell => text()();

  TextColumn get nat => text()();

  @override
  Set<Column> get primaryKey => {uuid};
}

/// Name (1:1 com Users)
class PersonNames extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)();

  TextColumn get title => text()();

  TextColumn get first => text()();

  TextColumn get last => text()();

  @override
  Set<Column> get primaryKey => {userUuid};
}

/// Login (1:1 com Users) - guarda campos além do uuid
class Logins extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)(); // PK+FK
  TextColumn get uuid => text()(); // mesmo uuid, redundante mas útil p/ debug
  TextColumn get username => text()();

  TextColumn get password => text()();

  TextColumn get salt => text()();

  TextColumn get md5 => text()();

  TextColumn get sha1 => text()();

  TextColumn get sha256 => text()();

  @override
  Set<Column> get primaryKey => {userUuid};
}

/// Date of birth (1:1 com Users)
class DobInfos extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)(); // PK+FK
  TextColumn get date => text().nullable()(); // ISO string
  IntColumn get age => integer()();

  @override
  Set<Column> get primaryKey => {userUuid};
}

/// Registered (1:1 com Users)
class RegisteredInfos extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)(); // PK+FK
  TextColumn get dateIso => text().nullable()(); // ISO string
  IntColumn get age => integer()();

  @override
  Set<Column> get primaryKey => {userUuid};
}

/// Id do usuário (1:1 com Users)
class UserIds extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)(); // PK+FK
  TextColumn get name => text()();

  TextColumn get value => text()(); // às vezes é null na API

  @override
  Set<Column> get primaryKey => {userUuid};
}

/// Foto (1:1 com Users)
class Pictures extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)(); // PK+FK
  TextColumn get large => text()();

  TextColumn get medium => text()();

  TextColumn get thumbnail => text()();

  @override
  Set<Column> get primaryKey => {userUuid};
}

/// Location (1:1 com Users)
class Locations extends Table {
  TextColumn get userUuid =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)(); // PK+FK

  // Street
  IntColumn get streetNumber => integer()();

  TextColumn get streetName => text()();

  // Address
  TextColumn get city => text()();

  TextColumn get state => text()();

  TextColumn get country => text()();

  TextColumn get postcode => text()(); // pode ser numérico ou string

  // Coordinates
  TextColumn get latitude => text()();

  TextColumn get longitude => text()();

  // Timezone
  TextColumn get timezoneOffset => text()();

  TextColumn get timezoneDescription => text()();

  @override
  Set<Column> get primaryKey => {userUuid};
}

@DriftDatabase(
  tables: [
    Users,
    PersonNames,
    Logins,
    DobInfos,
    RegisteredInfos,
    UserIds,
    Pictures,
    Locations,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Garante que foreign_keys estejam ativadas
  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator migrator) async {
      await migrator.createAll();
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(path.join(dir.path, 'local_database.db'));
    return NativeDatabase(file);
  });
}
