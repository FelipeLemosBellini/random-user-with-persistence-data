import 'package:drift/drift.dart';
import 'package:random_user_data_persistence/core/local_storage/app_database.dart';
import 'package:random_user_data_persistence/features/users/data/model/coordinates_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/data_info_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/location_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/login_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/person_name_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/picture_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/street_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/timezone_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_id_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';

class UserLocalDataSource {
  final AppDatabase appDatabase;

  UserLocalDataSource({required this.appDatabase});

  Future<void> saveUser(UserModel user) async {
    final uuid = user.login.uuid.toString();
    await appDatabase.transaction(() async {
      // Tabela principal
      await appDatabase
          .into(appDatabase.users)
          .insertOnConflictUpdate(
            UsersCompanion(
              uuid: Value(uuid),
              gender: Value(user.gender),
              email: Value(user.email),
              phone: Value(user.phone),
              cell: Value(user.cell),
              nat: Value(user.nat),
            ),
          );

      // Name
      await appDatabase
          .into(appDatabase.personNames)
          .insertOnConflictUpdate(
            PersonNamesCompanion(
              userUuid: Value(uuid),
              title: Value(user.name.title),
              first: Value(user.name.first),
              last: Value(user.name.last),
            ),
          );

      // Login
      await appDatabase
          .into(appDatabase.logins)
          .insertOnConflictUpdate(
            LoginsCompanion(
              userUuid: Value(uuid),
              uuid: Value(user.login.uuid),
              username: Value(user.login.username),
              password: Value(user.login.password),
              salt: Value(user.login.salt),
              md5: Value(user.login.md5),
              sha1: Value(user.login.sha1),
              sha256: Value(user.login.sha256),
            ),
          );

      // Dob
      await appDatabase
          .into(appDatabase.dobInfos)
          .insertOnConflictUpdate(
            DobInfosCompanion(
              userUuid: Value(uuid),
              date: Value(user.dob.date.toString()),
              age: Value(user.dob.age),
            ),
          );

      // Registered
      await appDatabase
          .into(appDatabase.registeredInfos)
          .insertOnConflictUpdate(
            RegisteredInfosCompanion(
              userUuid: Value(uuid),
              dateIso: Value(user.registered.date.toString()),
              age: Value(user.registered.age),
            ),
          );

      // User Id
      await appDatabase
          .into(appDatabase.userIds)
          .insertOnConflictUpdate(
            UserIdsCompanion(
              userUuid: Value(uuid),
              name: Value(user.id.name),
              value: Value(user.id.value.toString()),
            ),
          );

      // Picture
      await appDatabase
          .into(appDatabase.pictures)
          .insertOnConflictUpdate(
            PicturesCompanion(
              userUuid: Value(uuid),
              large: Value(user.picture.large),
              medium: Value(user.picture.medium),
              thumbnail: Value(user.picture.thumbnail),
            ),
          );

      // Location
      await appDatabase
          .into(appDatabase.locations)
          .insertOnConflictUpdate(
            LocationsCompanion(
              userUuid: Value(uuid),
              streetNumber: Value(user.location.street.number),
              streetName: Value(user.location.street.name),
              city: Value(user.location.city),
              state: Value(user.location.state),
              country: Value(user.location.country),
              postcode: Value(user.location.postcode),
              latitude: Value(user.location.coordinates.latitude.toString()),
              longitude: Value(user.location.coordinates.longitude.toString()),
              timezoneOffset: Value(user.location.timezone.offset),
              timezoneDescription: Value(user.location.timezone.description),
            ),
          );
    });
  }

  Future<void> deleteByUuid(String uuid) {
    return (appDatabase.delete(
      appDatabase.users,
    )..where((u) => u.uuid.equals(uuid))).go();
  }

  Future<List<UserModel>> listAllUsers() async {
    final query = appDatabase.select(appDatabase.users).join([
      innerJoin(
        appDatabase.personNames,
        appDatabase.personNames.userUuid.equalsExp(appDatabase.users.uuid),
      ),
      innerJoin(
        appDatabase.logins,
        appDatabase.logins.userUuid.equalsExp(appDatabase.users.uuid),
      ),
      innerJoin(
        appDatabase.dobInfos,
        appDatabase.dobInfos.userUuid.equalsExp(appDatabase.users.uuid),
      ),
      innerJoin(
        appDatabase.registeredInfos,
        appDatabase.registeredInfos.userUuid.equalsExp(appDatabase.users.uuid),
      ),
      innerJoin(
        appDatabase.userIds,
        appDatabase.userIds.userUuid.equalsExp(appDatabase.users.uuid),
      ),
      innerJoin(
        appDatabase.pictures,
        appDatabase.pictures.userUuid.equalsExp(appDatabase.users.uuid),
      ),
      innerJoin(
        appDatabase.locations,
        appDatabase.locations.userUuid.equalsExp(appDatabase.users.uuid),
      ),
    ]);

    List<TypedResult> rows = await query.get();
    return rows.map((row) => _mapRowToUserModel(row, appDatabase)).toList();
  }

  UserModel _mapRowToUserModel(TypedResult row, AppDatabase db) {
    final u = row.readTable(db.users);
    final n = row.readTable(db.personNames);
    final l = row.readTable(db.logins);
    final d = row.readTable(db.dobInfos);
    final r = row.readTable(db.registeredInfos);
    final i = row.readTable(db.userIds);
    final p = row.readTable(db.pictures);
    final loc = row.readTable(db.locations);

    return UserModel(
      gender: u.gender,
      name: PersonNameModel(title: n.title, first: n.first, last: n.last),
      location: LocationModel(
        street: StreetModel(number: loc.streetNumber, name: loc.streetName),
        city: loc.city,
        state: loc.state,
        country: loc.country,
        postcode: loc.postcode,
        coordinates: CoordinatesModel(
          latitude: loc.latitude,
          longitude: loc.longitude,
        ),
        timezone: TimezoneModel(
          offset: loc.timezoneOffset,
          description: loc.timezoneDescription,
        ),
      ),
      email: u.email,
      login: LoginModel(
        uuid: l.uuid,
        username: l.username,
        password: l.password,
        salt: l.salt,
        md5: l.md5,
        sha1: l.sha1,
        sha256: l.sha256,
      ),
      dob: DateInfoModel(date: DateTime.tryParse(d.date ?? ''), age: d.age),
      registered: DateInfoModel(
        date: DateTime.tryParse(r.dateIso ?? ''),
        age: r.age,
      ),
      phone: u.phone,
      cell: u.cell,
      id: UserIdModel(name: i.name, value: i.value),
      picture: PictureModel(
        large: p.large,
        medium: p.medium,
        thumbnail: p.thumbnail,
      ),
      nat: u.nat,
    );
  }
}
