// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
    'uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cellMeta = const VerificationMeta('cell');
  @override
  late final GeneratedColumn<String> cell = GeneratedColumn<String>(
    'cell',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _natMeta = const VerificationMeta('nat');
  @override
  late final GeneratedColumn<String> nat = GeneratedColumn<String>(
    'nat',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [uuid, gender, email, phone, cell, nat];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
        _uuidMeta,
        uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta),
      );
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('cell')) {
      context.handle(
        _cellMeta,
        cell.isAcceptableOrUnknown(data['cell']!, _cellMeta),
      );
    } else if (isInserting) {
      context.missing(_cellMeta);
    }
    if (data.containsKey('nat')) {
      context.handle(
        _natMeta,
        nat.isAcceptableOrUnknown(data['nat']!, _natMeta),
      );
    } else if (isInserting) {
      context.missing(_natMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      uuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uuid'],
      )!,
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      cell: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cell'],
      )!,
      nat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nat'],
      )!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String uuid;
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  const User({
    required this.uuid,
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['gender'] = Variable<String>(gender);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['cell'] = Variable<String>(cell);
    map['nat'] = Variable<String>(nat);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      uuid: Value(uuid),
      gender: Value(gender),
      email: Value(email),
      phone: Value(phone),
      cell: Value(cell),
      nat: Value(nat),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      uuid: serializer.fromJson<String>(json['uuid']),
      gender: serializer.fromJson<String>(json['gender']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      cell: serializer.fromJson<String>(json['cell']),
      nat: serializer.fromJson<String>(json['nat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'gender': serializer.toJson<String>(gender),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'cell': serializer.toJson<String>(cell),
      'nat': serializer.toJson<String>(nat),
    };
  }

  User copyWith({
    String? uuid,
    String? gender,
    String? email,
    String? phone,
    String? cell,
    String? nat,
  }) => User(
    uuid: uuid ?? this.uuid,
    gender: gender ?? this.gender,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    cell: cell ?? this.cell,
    nat: nat ?? this.nat,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      gender: data.gender.present ? data.gender.value : this.gender,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
      cell: data.cell.present ? data.cell.value : this.cell,
      nat: data.nat.present ? data.nat.value : this.nat,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('uuid: $uuid, ')
          ..write('gender: $gender, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('cell: $cell, ')
          ..write('nat: $nat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, gender, email, phone, cell, nat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.uuid == this.uuid &&
          other.gender == this.gender &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.cell == this.cell &&
          other.nat == this.nat);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> uuid;
  final Value<String> gender;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> cell;
  final Value<String> nat;
  final Value<int> rowid;
  const UsersCompanion({
    this.uuid = const Value.absent(),
    this.gender = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.cell = const Value.absent(),
    this.nat = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String uuid,
    required String gender,
    required String email,
    required String phone,
    required String cell,
    required String nat,
    this.rowid = const Value.absent(),
  }) : uuid = Value(uuid),
       gender = Value(gender),
       email = Value(email),
       phone = Value(phone),
       cell = Value(cell),
       nat = Value(nat);
  static Insertable<User> custom({
    Expression<String>? uuid,
    Expression<String>? gender,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? cell,
    Expression<String>? nat,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (gender != null) 'gender': gender,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (cell != null) 'cell': cell,
      if (nat != null) 'nat': nat,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith({
    Value<String>? uuid,
    Value<String>? gender,
    Value<String>? email,
    Value<String>? phone,
    Value<String>? cell,
    Value<String>? nat,
    Value<int>? rowid,
  }) {
    return UsersCompanion(
      uuid: uuid ?? this.uuid,
      gender: gender ?? this.gender,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      nat: nat ?? this.nat,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (cell.present) {
      map['cell'] = Variable<String>(cell.value);
    }
    if (nat.present) {
      map['nat'] = Variable<String>(nat.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('uuid: $uuid, ')
          ..write('gender: $gender, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('cell: $cell, ')
          ..write('nat: $nat, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PersonNamesTable extends PersonNames
    with TableInfo<$PersonNamesTable, PersonName> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersonNamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstMeta = const VerificationMeta('first');
  @override
  late final GeneratedColumn<String> first = GeneratedColumn<String>(
    'first',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastMeta = const VerificationMeta('last');
  @override
  late final GeneratedColumn<String> last = GeneratedColumn<String>(
    'last',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [userUuid, title, first, last];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'person_names';
  @override
  VerificationContext validateIntegrity(
    Insertable<PersonName> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('first')) {
      context.handle(
        _firstMeta,
        first.isAcceptableOrUnknown(data['first']!, _firstMeta),
      );
    } else if (isInserting) {
      context.missing(_firstMeta);
    }
    if (data.containsKey('last')) {
      context.handle(
        _lastMeta,
        last.isAcceptableOrUnknown(data['last']!, _lastMeta),
      );
    } else if (isInserting) {
      context.missing(_lastMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  PersonName map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PersonName(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      first: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first'],
      )!,
      last: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last'],
      )!,
    );
  }

  @override
  $PersonNamesTable createAlias(String alias) {
    return $PersonNamesTable(attachedDatabase, alias);
  }
}

class PersonName extends DataClass implements Insertable<PersonName> {
  final String userUuid;
  final String title;
  final String first;
  final String last;
  const PersonName({
    required this.userUuid,
    required this.title,
    required this.first,
    required this.last,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    map['title'] = Variable<String>(title);
    map['first'] = Variable<String>(first);
    map['last'] = Variable<String>(last);
    return map;
  }

  PersonNamesCompanion toCompanion(bool nullToAbsent) {
    return PersonNamesCompanion(
      userUuid: Value(userUuid),
      title: Value(title),
      first: Value(first),
      last: Value(last),
    );
  }

  factory PersonName.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonName(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      title: serializer.fromJson<String>(json['title']),
      first: serializer.fromJson<String>(json['first']),
      last: serializer.fromJson<String>(json['last']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'title': serializer.toJson<String>(title),
      'first': serializer.toJson<String>(first),
      'last': serializer.toJson<String>(last),
    };
  }

  PersonName copyWith({
    String? userUuid,
    String? title,
    String? first,
    String? last,
  }) => PersonName(
    userUuid: userUuid ?? this.userUuid,
    title: title ?? this.title,
    first: first ?? this.first,
    last: last ?? this.last,
  );
  PersonName copyWithCompanion(PersonNamesCompanion data) {
    return PersonName(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      title: data.title.present ? data.title.value : this.title,
      first: data.first.present ? data.first.value : this.first,
      last: data.last.present ? data.last.value : this.last,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PersonName(')
          ..write('userUuid: $userUuid, ')
          ..write('title: $title, ')
          ..write('first: $first, ')
          ..write('last: $last')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userUuid, title, first, last);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonName &&
          other.userUuid == this.userUuid &&
          other.title == this.title &&
          other.first == this.first &&
          other.last == this.last);
}

class PersonNamesCompanion extends UpdateCompanion<PersonName> {
  final Value<String> userUuid;
  final Value<String> title;
  final Value<String> first;
  final Value<String> last;
  final Value<int> rowid;
  const PersonNamesCompanion({
    this.userUuid = const Value.absent(),
    this.title = const Value.absent(),
    this.first = const Value.absent(),
    this.last = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PersonNamesCompanion.insert({
    required String userUuid,
    required String title,
    required String first,
    required String last,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       title = Value(title),
       first = Value(first),
       last = Value(last);
  static Insertable<PersonName> custom({
    Expression<String>? userUuid,
    Expression<String>? title,
    Expression<String>? first,
    Expression<String>? last,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (title != null) 'title': title,
      if (first != null) 'first': first,
      if (last != null) 'last': last,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PersonNamesCompanion copyWith({
    Value<String>? userUuid,
    Value<String>? title,
    Value<String>? first,
    Value<String>? last,
    Value<int>? rowid,
  }) {
    return PersonNamesCompanion(
      userUuid: userUuid ?? this.userUuid,
      title: title ?? this.title,
      first: first ?? this.first,
      last: last ?? this.last,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (first.present) {
      map['first'] = Variable<String>(first.value);
    }
    if (last.present) {
      map['last'] = Variable<String>(last.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonNamesCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('title: $title, ')
          ..write('first: $first, ')
          ..write('last: $last, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoginsTable extends Logins with TableInfo<$LoginsTable, Login> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoginsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
    'uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _saltMeta = const VerificationMeta('salt');
  @override
  late final GeneratedColumn<String> salt = GeneratedColumn<String>(
    'salt',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _md5Meta = const VerificationMeta('md5');
  @override
  late final GeneratedColumn<String> md5 = GeneratedColumn<String>(
    'md5',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sha1Meta = const VerificationMeta('sha1');
  @override
  late final GeneratedColumn<String> sha1 = GeneratedColumn<String>(
    'sha1',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sha256Meta = const VerificationMeta('sha256');
  @override
  late final GeneratedColumn<String> sha256 = GeneratedColumn<String>(
    'sha256',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    userUuid,
    uuid,
    username,
    password,
    salt,
    md5,
    sha1,
    sha256,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'logins';
  @override
  VerificationContext validateIntegrity(
    Insertable<Login> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('uuid')) {
      context.handle(
        _uuidMeta,
        uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta),
      );
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('salt')) {
      context.handle(
        _saltMeta,
        salt.isAcceptableOrUnknown(data['salt']!, _saltMeta),
      );
    } else if (isInserting) {
      context.missing(_saltMeta);
    }
    if (data.containsKey('md5')) {
      context.handle(
        _md5Meta,
        md5.isAcceptableOrUnknown(data['md5']!, _md5Meta),
      );
    } else if (isInserting) {
      context.missing(_md5Meta);
    }
    if (data.containsKey('sha1')) {
      context.handle(
        _sha1Meta,
        sha1.isAcceptableOrUnknown(data['sha1']!, _sha1Meta),
      );
    } else if (isInserting) {
      context.missing(_sha1Meta);
    }
    if (data.containsKey('sha256')) {
      context.handle(
        _sha256Meta,
        sha256.isAcceptableOrUnknown(data['sha256']!, _sha256Meta),
      );
    } else if (isInserting) {
      context.missing(_sha256Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  Login map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Login(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      uuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uuid'],
      )!,
      username: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}username'],
      )!,
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      )!,
      salt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}salt'],
      )!,
      md5: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}md5'],
      )!,
      sha1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sha1'],
      )!,
      sha256: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sha256'],
      )!,
    );
  }

  @override
  $LoginsTable createAlias(String alias) {
    return $LoginsTable(attachedDatabase, alias);
  }
}

class Login extends DataClass implements Insertable<Login> {
  final String userUuid;
  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;
  const Login({
    required this.userUuid,
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    map['uuid'] = Variable<String>(uuid);
    map['username'] = Variable<String>(username);
    map['password'] = Variable<String>(password);
    map['salt'] = Variable<String>(salt);
    map['md5'] = Variable<String>(md5);
    map['sha1'] = Variable<String>(sha1);
    map['sha256'] = Variable<String>(sha256);
    return map;
  }

  LoginsCompanion toCompanion(bool nullToAbsent) {
    return LoginsCompanion(
      userUuid: Value(userUuid),
      uuid: Value(uuid),
      username: Value(username),
      password: Value(password),
      salt: Value(salt),
      md5: Value(md5),
      sha1: Value(sha1),
      sha256: Value(sha256),
    );
  }

  factory Login.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Login(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      uuid: serializer.fromJson<String>(json['uuid']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      salt: serializer.fromJson<String>(json['salt']),
      md5: serializer.fromJson<String>(json['md5']),
      sha1: serializer.fromJson<String>(json['sha1']),
      sha256: serializer.fromJson<String>(json['sha256']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'uuid': serializer.toJson<String>(uuid),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'salt': serializer.toJson<String>(salt),
      'md5': serializer.toJson<String>(md5),
      'sha1': serializer.toJson<String>(sha1),
      'sha256': serializer.toJson<String>(sha256),
    };
  }

  Login copyWith({
    String? userUuid,
    String? uuid,
    String? username,
    String? password,
    String? salt,
    String? md5,
    String? sha1,
    String? sha256,
  }) => Login(
    userUuid: userUuid ?? this.userUuid,
    uuid: uuid ?? this.uuid,
    username: username ?? this.username,
    password: password ?? this.password,
    salt: salt ?? this.salt,
    md5: md5 ?? this.md5,
    sha1: sha1 ?? this.sha1,
    sha256: sha256 ?? this.sha256,
  );
  Login copyWithCompanion(LoginsCompanion data) {
    return Login(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      username: data.username.present ? data.username.value : this.username,
      password: data.password.present ? data.password.value : this.password,
      salt: data.salt.present ? data.salt.value : this.salt,
      md5: data.md5.present ? data.md5.value : this.md5,
      sha1: data.sha1.present ? data.sha1.value : this.sha1,
      sha256: data.sha256.present ? data.sha256.value : this.sha256,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Login(')
          ..write('userUuid: $userUuid, ')
          ..write('uuid: $uuid, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('salt: $salt, ')
          ..write('md5: $md5, ')
          ..write('sha1: $sha1, ')
          ..write('sha256: $sha256')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(userUuid, uuid, username, password, salt, md5, sha1, sha256);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Login &&
          other.userUuid == this.userUuid &&
          other.uuid == this.uuid &&
          other.username == this.username &&
          other.password == this.password &&
          other.salt == this.salt &&
          other.md5 == this.md5 &&
          other.sha1 == this.sha1 &&
          other.sha256 == this.sha256);
}

class LoginsCompanion extends UpdateCompanion<Login> {
  final Value<String> userUuid;
  final Value<String> uuid;
  final Value<String> username;
  final Value<String> password;
  final Value<String> salt;
  final Value<String> md5;
  final Value<String> sha1;
  final Value<String> sha256;
  final Value<int> rowid;
  const LoginsCompanion({
    this.userUuid = const Value.absent(),
    this.uuid = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.salt = const Value.absent(),
    this.md5 = const Value.absent(),
    this.sha1 = const Value.absent(),
    this.sha256 = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoginsCompanion.insert({
    required String userUuid,
    required String uuid,
    required String username,
    required String password,
    required String salt,
    required String md5,
    required String sha1,
    required String sha256,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       uuid = Value(uuid),
       username = Value(username),
       password = Value(password),
       salt = Value(salt),
       md5 = Value(md5),
       sha1 = Value(sha1),
       sha256 = Value(sha256);
  static Insertable<Login> custom({
    Expression<String>? userUuid,
    Expression<String>? uuid,
    Expression<String>? username,
    Expression<String>? password,
    Expression<String>? salt,
    Expression<String>? md5,
    Expression<String>? sha1,
    Expression<String>? sha256,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (uuid != null) 'uuid': uuid,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (salt != null) 'salt': salt,
      if (md5 != null) 'md5': md5,
      if (sha1 != null) 'sha1': sha1,
      if (sha256 != null) 'sha256': sha256,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoginsCompanion copyWith({
    Value<String>? userUuid,
    Value<String>? uuid,
    Value<String>? username,
    Value<String>? password,
    Value<String>? salt,
    Value<String>? md5,
    Value<String>? sha1,
    Value<String>? sha256,
    Value<int>? rowid,
  }) {
    return LoginsCompanion(
      userUuid: userUuid ?? this.userUuid,
      uuid: uuid ?? this.uuid,
      username: username ?? this.username,
      password: password ?? this.password,
      salt: salt ?? this.salt,
      md5: md5 ?? this.md5,
      sha1: sha1 ?? this.sha1,
      sha256: sha256 ?? this.sha256,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (salt.present) {
      map['salt'] = Variable<String>(salt.value);
    }
    if (md5.present) {
      map['md5'] = Variable<String>(md5.value);
    }
    if (sha1.present) {
      map['sha1'] = Variable<String>(sha1.value);
    }
    if (sha256.present) {
      map['sha256'] = Variable<String>(sha256.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoginsCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('uuid: $uuid, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('salt: $salt, ')
          ..write('md5: $md5, ')
          ..write('sha1: $sha1, ')
          ..write('sha256: $sha256, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DobInfosTable extends DobInfos with TableInfo<$DobInfosTable, DobInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DobInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [userUuid, date, age];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dob_infos';
  @override
  VerificationContext validateIntegrity(
    Insertable<DobInfo> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  DobInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DobInfo(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      ),
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      )!,
    );
  }

  @override
  $DobInfosTable createAlias(String alias) {
    return $DobInfosTable(attachedDatabase, alias);
  }
}

class DobInfo extends DataClass implements Insertable<DobInfo> {
  final String userUuid;
  final String? date;
  final int age;
  const DobInfo({required this.userUuid, this.date, required this.age});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<String>(date);
    }
    map['age'] = Variable<int>(age);
    return map;
  }

  DobInfosCompanion toCompanion(bool nullToAbsent) {
    return DobInfosCompanion(
      userUuid: Value(userUuid),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      age: Value(age),
    );
  }

  factory DobInfo.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DobInfo(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      date: serializer.fromJson<String?>(json['date']),
      age: serializer.fromJson<int>(json['age']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'date': serializer.toJson<String?>(date),
      'age': serializer.toJson<int>(age),
    };
  }

  DobInfo copyWith({
    String? userUuid,
    Value<String?> date = const Value.absent(),
    int? age,
  }) => DobInfo(
    userUuid: userUuid ?? this.userUuid,
    date: date.present ? date.value : this.date,
    age: age ?? this.age,
  );
  DobInfo copyWithCompanion(DobInfosCompanion data) {
    return DobInfo(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      date: data.date.present ? data.date.value : this.date,
      age: data.age.present ? data.age.value : this.age,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DobInfo(')
          ..write('userUuid: $userUuid, ')
          ..write('date: $date, ')
          ..write('age: $age')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userUuid, date, age);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DobInfo &&
          other.userUuid == this.userUuid &&
          other.date == this.date &&
          other.age == this.age);
}

class DobInfosCompanion extends UpdateCompanion<DobInfo> {
  final Value<String> userUuid;
  final Value<String?> date;
  final Value<int> age;
  final Value<int> rowid;
  const DobInfosCompanion({
    this.userUuid = const Value.absent(),
    this.date = const Value.absent(),
    this.age = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DobInfosCompanion.insert({
    required String userUuid,
    this.date = const Value.absent(),
    required int age,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       age = Value(age);
  static Insertable<DobInfo> custom({
    Expression<String>? userUuid,
    Expression<String>? date,
    Expression<int>? age,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (date != null) 'date': date,
      if (age != null) 'age': age,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DobInfosCompanion copyWith({
    Value<String>? userUuid,
    Value<String?>? date,
    Value<int>? age,
    Value<int>? rowid,
  }) {
    return DobInfosCompanion(
      userUuid: userUuid ?? this.userUuid,
      date: date ?? this.date,
      age: age ?? this.age,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DobInfosCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('date: $date, ')
          ..write('age: $age, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RegisteredInfosTable extends RegisteredInfos
    with TableInfo<$RegisteredInfosTable, RegisteredInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RegisteredInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _dateIsoMeta = const VerificationMeta(
    'dateIso',
  );
  @override
  late final GeneratedColumn<String> dateIso = GeneratedColumn<String>(
    'date_iso',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [userUuid, dateIso, age];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'registered_infos';
  @override
  VerificationContext validateIntegrity(
    Insertable<RegisteredInfo> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('date_iso')) {
      context.handle(
        _dateIsoMeta,
        dateIso.isAcceptableOrUnknown(data['date_iso']!, _dateIsoMeta),
      );
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  RegisteredInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RegisteredInfo(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      dateIso: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date_iso'],
      ),
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      )!,
    );
  }

  @override
  $RegisteredInfosTable createAlias(String alias) {
    return $RegisteredInfosTable(attachedDatabase, alias);
  }
}

class RegisteredInfo extends DataClass implements Insertable<RegisteredInfo> {
  final String userUuid;
  final String? dateIso;
  final int age;
  const RegisteredInfo({
    required this.userUuid,
    this.dateIso,
    required this.age,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    if (!nullToAbsent || dateIso != null) {
      map['date_iso'] = Variable<String>(dateIso);
    }
    map['age'] = Variable<int>(age);
    return map;
  }

  RegisteredInfosCompanion toCompanion(bool nullToAbsent) {
    return RegisteredInfosCompanion(
      userUuid: Value(userUuid),
      dateIso: dateIso == null && nullToAbsent
          ? const Value.absent()
          : Value(dateIso),
      age: Value(age),
    );
  }

  factory RegisteredInfo.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RegisteredInfo(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      dateIso: serializer.fromJson<String?>(json['dateIso']),
      age: serializer.fromJson<int>(json['age']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'dateIso': serializer.toJson<String?>(dateIso),
      'age': serializer.toJson<int>(age),
    };
  }

  RegisteredInfo copyWith({
    String? userUuid,
    Value<String?> dateIso = const Value.absent(),
    int? age,
  }) => RegisteredInfo(
    userUuid: userUuid ?? this.userUuid,
    dateIso: dateIso.present ? dateIso.value : this.dateIso,
    age: age ?? this.age,
  );
  RegisteredInfo copyWithCompanion(RegisteredInfosCompanion data) {
    return RegisteredInfo(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      dateIso: data.dateIso.present ? data.dateIso.value : this.dateIso,
      age: data.age.present ? data.age.value : this.age,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RegisteredInfo(')
          ..write('userUuid: $userUuid, ')
          ..write('dateIso: $dateIso, ')
          ..write('age: $age')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userUuid, dateIso, age);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RegisteredInfo &&
          other.userUuid == this.userUuid &&
          other.dateIso == this.dateIso &&
          other.age == this.age);
}

class RegisteredInfosCompanion extends UpdateCompanion<RegisteredInfo> {
  final Value<String> userUuid;
  final Value<String?> dateIso;
  final Value<int> age;
  final Value<int> rowid;
  const RegisteredInfosCompanion({
    this.userUuid = const Value.absent(),
    this.dateIso = const Value.absent(),
    this.age = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RegisteredInfosCompanion.insert({
    required String userUuid,
    this.dateIso = const Value.absent(),
    required int age,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       age = Value(age);
  static Insertable<RegisteredInfo> custom({
    Expression<String>? userUuid,
    Expression<String>? dateIso,
    Expression<int>? age,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (dateIso != null) 'date_iso': dateIso,
      if (age != null) 'age': age,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RegisteredInfosCompanion copyWith({
    Value<String>? userUuid,
    Value<String?>? dateIso,
    Value<int>? age,
    Value<int>? rowid,
  }) {
    return RegisteredInfosCompanion(
      userUuid: userUuid ?? this.userUuid,
      dateIso: dateIso ?? this.dateIso,
      age: age ?? this.age,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (dateIso.present) {
      map['date_iso'] = Variable<String>(dateIso.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RegisteredInfosCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('dateIso: $dateIso, ')
          ..write('age: $age, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserIdsTable extends UserIds with TableInfo<$UserIdsTable, UserId> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserIdsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [userUuid, name, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_ids';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserId> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  UserId map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserId(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $UserIdsTable createAlias(String alias) {
    return $UserIdsTable(attachedDatabase, alias);
  }
}

class UserId extends DataClass implements Insertable<UserId> {
  final String userUuid;
  final String name;
  final String value;
  const UserId({
    required this.userUuid,
    required this.name,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    map['name'] = Variable<String>(name);
    map['value'] = Variable<String>(value);
    return map;
  }

  UserIdsCompanion toCompanion(bool nullToAbsent) {
    return UserIdsCompanion(
      userUuid: Value(userUuid),
      name: Value(name),
      value: Value(value),
    );
  }

  factory UserId.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserId(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      name: serializer.fromJson<String>(json['name']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'name': serializer.toJson<String>(name),
      'value': serializer.toJson<String>(value),
    };
  }

  UserId copyWith({String? userUuid, String? name, String? value}) => UserId(
    userUuid: userUuid ?? this.userUuid,
    name: name ?? this.name,
    value: value ?? this.value,
  );
  UserId copyWithCompanion(UserIdsCompanion data) {
    return UserId(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      name: data.name.present ? data.name.value : this.name,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserId(')
          ..write('userUuid: $userUuid, ')
          ..write('name: $name, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userUuid, name, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserId &&
          other.userUuid == this.userUuid &&
          other.name == this.name &&
          other.value == this.value);
}

class UserIdsCompanion extends UpdateCompanion<UserId> {
  final Value<String> userUuid;
  final Value<String> name;
  final Value<String> value;
  final Value<int> rowid;
  const UserIdsCompanion({
    this.userUuid = const Value.absent(),
    this.name = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserIdsCompanion.insert({
    required String userUuid,
    required String name,
    required String value,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       name = Value(name),
       value = Value(value);
  static Insertable<UserId> custom({
    Expression<String>? userUuid,
    Expression<String>? name,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (name != null) 'name': name,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserIdsCompanion copyWith({
    Value<String>? userUuid,
    Value<String>? name,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return UserIdsCompanion(
      userUuid: userUuid ?? this.userUuid,
      name: name ?? this.name,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserIdsCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('name: $name, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PicturesTable extends Pictures with TableInfo<$PicturesTable, Picture> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PicturesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _largeMeta = const VerificationMeta('large');
  @override
  late final GeneratedColumn<String> large = GeneratedColumn<String>(
    'large',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mediumMeta = const VerificationMeta('medium');
  @override
  late final GeneratedColumn<String> medium = GeneratedColumn<String>(
    'medium',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _thumbnailMeta = const VerificationMeta(
    'thumbnail',
  );
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
    'thumbnail',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [userUuid, large, medium, thumbnail];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pictures';
  @override
  VerificationContext validateIntegrity(
    Insertable<Picture> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('large')) {
      context.handle(
        _largeMeta,
        large.isAcceptableOrUnknown(data['large']!, _largeMeta),
      );
    } else if (isInserting) {
      context.missing(_largeMeta);
    }
    if (data.containsKey('medium')) {
      context.handle(
        _mediumMeta,
        medium.isAcceptableOrUnknown(data['medium']!, _mediumMeta),
      );
    } else if (isInserting) {
      context.missing(_mediumMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(
        _thumbnailMeta,
        thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta),
      );
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  Picture map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Picture(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      large: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}large'],
      )!,
      medium: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}medium'],
      )!,
      thumbnail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnail'],
      )!,
    );
  }

  @override
  $PicturesTable createAlias(String alias) {
    return $PicturesTable(attachedDatabase, alias);
  }
}

class Picture extends DataClass implements Insertable<Picture> {
  final String userUuid;
  final String large;
  final String medium;
  final String thumbnail;
  const Picture({
    required this.userUuid,
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    map['large'] = Variable<String>(large);
    map['medium'] = Variable<String>(medium);
    map['thumbnail'] = Variable<String>(thumbnail);
    return map;
  }

  PicturesCompanion toCompanion(bool nullToAbsent) {
    return PicturesCompanion(
      userUuid: Value(userUuid),
      large: Value(large),
      medium: Value(medium),
      thumbnail: Value(thumbnail),
    );
  }

  factory Picture.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Picture(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      large: serializer.fromJson<String>(json['large']),
      medium: serializer.fromJson<String>(json['medium']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'large': serializer.toJson<String>(large),
      'medium': serializer.toJson<String>(medium),
      'thumbnail': serializer.toJson<String>(thumbnail),
    };
  }

  Picture copyWith({
    String? userUuid,
    String? large,
    String? medium,
    String? thumbnail,
  }) => Picture(
    userUuid: userUuid ?? this.userUuid,
    large: large ?? this.large,
    medium: medium ?? this.medium,
    thumbnail: thumbnail ?? this.thumbnail,
  );
  Picture copyWithCompanion(PicturesCompanion data) {
    return Picture(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      large: data.large.present ? data.large.value : this.large,
      medium: data.medium.present ? data.medium.value : this.medium,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Picture(')
          ..write('userUuid: $userUuid, ')
          ..write('large: $large, ')
          ..write('medium: $medium, ')
          ..write('thumbnail: $thumbnail')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userUuid, large, medium, thumbnail);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Picture &&
          other.userUuid == this.userUuid &&
          other.large == this.large &&
          other.medium == this.medium &&
          other.thumbnail == this.thumbnail);
}

class PicturesCompanion extends UpdateCompanion<Picture> {
  final Value<String> userUuid;
  final Value<String> large;
  final Value<String> medium;
  final Value<String> thumbnail;
  final Value<int> rowid;
  const PicturesCompanion({
    this.userUuid = const Value.absent(),
    this.large = const Value.absent(),
    this.medium = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PicturesCompanion.insert({
    required String userUuid,
    required String large,
    required String medium,
    required String thumbnail,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       large = Value(large),
       medium = Value(medium),
       thumbnail = Value(thumbnail);
  static Insertable<Picture> custom({
    Expression<String>? userUuid,
    Expression<String>? large,
    Expression<String>? medium,
    Expression<String>? thumbnail,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (large != null) 'large': large,
      if (medium != null) 'medium': medium,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PicturesCompanion copyWith({
    Value<String>? userUuid,
    Value<String>? large,
    Value<String>? medium,
    Value<String>? thumbnail,
    Value<int>? rowid,
  }) {
    return PicturesCompanion(
      userUuid: userUuid ?? this.userUuid,
      large: large ?? this.large,
      medium: medium ?? this.medium,
      thumbnail: thumbnail ?? this.thumbnail,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (large.present) {
      map['large'] = Variable<String>(large.value);
    }
    if (medium.present) {
      map['medium'] = Variable<String>(medium.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PicturesCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('large: $large, ')
          ..write('medium: $medium, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocationsTable extends Locations
    with TableInfo<$LocationsTable, Location> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userUuidMeta = const VerificationMeta(
    'userUuid',
  );
  @override
  late final GeneratedColumn<String> userUuid = GeneratedColumn<String>(
    'user_uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES users (uuid) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _streetNumberMeta = const VerificationMeta(
    'streetNumber',
  );
  @override
  late final GeneratedColumn<int> streetNumber = GeneratedColumn<int>(
    'street_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _streetNameMeta = const VerificationMeta(
    'streetName',
  );
  @override
  late final GeneratedColumn<String> streetName = GeneratedColumn<String>(
    'street_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
    'city',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
    'state',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _countryMeta = const VerificationMeta(
    'country',
  );
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
    'country',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _postcodeMeta = const VerificationMeta(
    'postcode',
  );
  @override
  late final GeneratedColumn<String> postcode = GeneratedColumn<String>(
    'postcode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<String> latitude = GeneratedColumn<String>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<String> longitude = GeneratedColumn<String>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timezoneOffsetMeta = const VerificationMeta(
    'timezoneOffset',
  );
  @override
  late final GeneratedColumn<String> timezoneOffset = GeneratedColumn<String>(
    'timezone_offset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timezoneDescriptionMeta =
      const VerificationMeta('timezoneDescription');
  @override
  late final GeneratedColumn<String> timezoneDescription =
      GeneratedColumn<String>(
        'timezone_description',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    userUuid,
    streetNumber,
    streetName,
    city,
    state,
    country,
    postcode,
    latitude,
    longitude,
    timezoneOffset,
    timezoneDescription,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'locations';
  @override
  VerificationContext validateIntegrity(
    Insertable<Location> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_uuid')) {
      context.handle(
        _userUuidMeta,
        userUuid.isAcceptableOrUnknown(data['user_uuid']!, _userUuidMeta),
      );
    } else if (isInserting) {
      context.missing(_userUuidMeta);
    }
    if (data.containsKey('street_number')) {
      context.handle(
        _streetNumberMeta,
        streetNumber.isAcceptableOrUnknown(
          data['street_number']!,
          _streetNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_streetNumberMeta);
    }
    if (data.containsKey('street_name')) {
      context.handle(
        _streetNameMeta,
        streetName.isAcceptableOrUnknown(data['street_name']!, _streetNameMeta),
      );
    } else if (isInserting) {
      context.missing(_streetNameMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
        _cityMeta,
        city.isAcceptableOrUnknown(data['city']!, _cityMeta),
      );
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
        _stateMeta,
        state.isAcceptableOrUnknown(data['state']!, _stateMeta),
      );
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('country')) {
      context.handle(
        _countryMeta,
        country.isAcceptableOrUnknown(data['country']!, _countryMeta),
      );
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('postcode')) {
      context.handle(
        _postcodeMeta,
        postcode.isAcceptableOrUnknown(data['postcode']!, _postcodeMeta),
      );
    } else if (isInserting) {
      context.missing(_postcodeMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('timezone_offset')) {
      context.handle(
        _timezoneOffsetMeta,
        timezoneOffset.isAcceptableOrUnknown(
          data['timezone_offset']!,
          _timezoneOffsetMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_timezoneOffsetMeta);
    }
    if (data.containsKey('timezone_description')) {
      context.handle(
        _timezoneDescriptionMeta,
        timezoneDescription.isAcceptableOrUnknown(
          data['timezone_description']!,
          _timezoneDescriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_timezoneDescriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userUuid};
  @override
  Location map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Location(
      userUuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_uuid'],
      )!,
      streetNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}street_number'],
      )!,
      streetName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}street_name'],
      )!,
      city: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city'],
      )!,
      state: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state'],
      )!,
      country: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country'],
      )!,
      postcode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}postcode'],
      )!,
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}latitude'],
      )!,
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}longitude'],
      )!,
      timezoneOffset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}timezone_offset'],
      )!,
      timezoneDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}timezone_description'],
      )!,
    );
  }

  @override
  $LocationsTable createAlias(String alias) {
    return $LocationsTable(attachedDatabase, alias);
  }
}

class Location extends DataClass implements Insertable<Location> {
  final String userUuid;
  final int streetNumber;
  final String streetName;
  final String city;
  final String state;
  final String country;
  final String postcode;
  final String latitude;
  final String longitude;
  final String timezoneOffset;
  final String timezoneDescription;
  const Location({
    required this.userUuid,
    required this.streetNumber,
    required this.streetName,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.latitude,
    required this.longitude,
    required this.timezoneOffset,
    required this.timezoneDescription,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_uuid'] = Variable<String>(userUuid);
    map['street_number'] = Variable<int>(streetNumber);
    map['street_name'] = Variable<String>(streetName);
    map['city'] = Variable<String>(city);
    map['state'] = Variable<String>(state);
    map['country'] = Variable<String>(country);
    map['postcode'] = Variable<String>(postcode);
    map['latitude'] = Variable<String>(latitude);
    map['longitude'] = Variable<String>(longitude);
    map['timezone_offset'] = Variable<String>(timezoneOffset);
    map['timezone_description'] = Variable<String>(timezoneDescription);
    return map;
  }

  LocationsCompanion toCompanion(bool nullToAbsent) {
    return LocationsCompanion(
      userUuid: Value(userUuid),
      streetNumber: Value(streetNumber),
      streetName: Value(streetName),
      city: Value(city),
      state: Value(state),
      country: Value(country),
      postcode: Value(postcode),
      latitude: Value(latitude),
      longitude: Value(longitude),
      timezoneOffset: Value(timezoneOffset),
      timezoneDescription: Value(timezoneDescription),
    );
  }

  factory Location.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Location(
      userUuid: serializer.fromJson<String>(json['userUuid']),
      streetNumber: serializer.fromJson<int>(json['streetNumber']),
      streetName: serializer.fromJson<String>(json['streetName']),
      city: serializer.fromJson<String>(json['city']),
      state: serializer.fromJson<String>(json['state']),
      country: serializer.fromJson<String>(json['country']),
      postcode: serializer.fromJson<String>(json['postcode']),
      latitude: serializer.fromJson<String>(json['latitude']),
      longitude: serializer.fromJson<String>(json['longitude']),
      timezoneOffset: serializer.fromJson<String>(json['timezoneOffset']),
      timezoneDescription: serializer.fromJson<String>(
        json['timezoneDescription'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userUuid': serializer.toJson<String>(userUuid),
      'streetNumber': serializer.toJson<int>(streetNumber),
      'streetName': serializer.toJson<String>(streetName),
      'city': serializer.toJson<String>(city),
      'state': serializer.toJson<String>(state),
      'country': serializer.toJson<String>(country),
      'postcode': serializer.toJson<String>(postcode),
      'latitude': serializer.toJson<String>(latitude),
      'longitude': serializer.toJson<String>(longitude),
      'timezoneOffset': serializer.toJson<String>(timezoneOffset),
      'timezoneDescription': serializer.toJson<String>(timezoneDescription),
    };
  }

  Location copyWith({
    String? userUuid,
    int? streetNumber,
    String? streetName,
    String? city,
    String? state,
    String? country,
    String? postcode,
    String? latitude,
    String? longitude,
    String? timezoneOffset,
    String? timezoneDescription,
  }) => Location(
    userUuid: userUuid ?? this.userUuid,
    streetNumber: streetNumber ?? this.streetNumber,
    streetName: streetName ?? this.streetName,
    city: city ?? this.city,
    state: state ?? this.state,
    country: country ?? this.country,
    postcode: postcode ?? this.postcode,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    timezoneOffset: timezoneOffset ?? this.timezoneOffset,
    timezoneDescription: timezoneDescription ?? this.timezoneDescription,
  );
  Location copyWithCompanion(LocationsCompanion data) {
    return Location(
      userUuid: data.userUuid.present ? data.userUuid.value : this.userUuid,
      streetNumber: data.streetNumber.present
          ? data.streetNumber.value
          : this.streetNumber,
      streetName: data.streetName.present
          ? data.streetName.value
          : this.streetName,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      postcode: data.postcode.present ? data.postcode.value : this.postcode,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      timezoneOffset: data.timezoneOffset.present
          ? data.timezoneOffset.value
          : this.timezoneOffset,
      timezoneDescription: data.timezoneDescription.present
          ? data.timezoneDescription.value
          : this.timezoneDescription,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Location(')
          ..write('userUuid: $userUuid, ')
          ..write('streetNumber: $streetNumber, ')
          ..write('streetName: $streetName, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('postcode: $postcode, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('timezoneOffset: $timezoneOffset, ')
          ..write('timezoneDescription: $timezoneDescription')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    userUuid,
    streetNumber,
    streetName,
    city,
    state,
    country,
    postcode,
    latitude,
    longitude,
    timezoneOffset,
    timezoneDescription,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Location &&
          other.userUuid == this.userUuid &&
          other.streetNumber == this.streetNumber &&
          other.streetName == this.streetName &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.postcode == this.postcode &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.timezoneOffset == this.timezoneOffset &&
          other.timezoneDescription == this.timezoneDescription);
}

class LocationsCompanion extends UpdateCompanion<Location> {
  final Value<String> userUuid;
  final Value<int> streetNumber;
  final Value<String> streetName;
  final Value<String> city;
  final Value<String> state;
  final Value<String> country;
  final Value<String> postcode;
  final Value<String> latitude;
  final Value<String> longitude;
  final Value<String> timezoneOffset;
  final Value<String> timezoneDescription;
  final Value<int> rowid;
  const LocationsCompanion({
    this.userUuid = const Value.absent(),
    this.streetNumber = const Value.absent(),
    this.streetName = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.postcode = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.timezoneOffset = const Value.absent(),
    this.timezoneDescription = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocationsCompanion.insert({
    required String userUuid,
    required int streetNumber,
    required String streetName,
    required String city,
    required String state,
    required String country,
    required String postcode,
    required String latitude,
    required String longitude,
    required String timezoneOffset,
    required String timezoneDescription,
    this.rowid = const Value.absent(),
  }) : userUuid = Value(userUuid),
       streetNumber = Value(streetNumber),
       streetName = Value(streetName),
       city = Value(city),
       state = Value(state),
       country = Value(country),
       postcode = Value(postcode),
       latitude = Value(latitude),
       longitude = Value(longitude),
       timezoneOffset = Value(timezoneOffset),
       timezoneDescription = Value(timezoneDescription);
  static Insertable<Location> custom({
    Expression<String>? userUuid,
    Expression<int>? streetNumber,
    Expression<String>? streetName,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? country,
    Expression<String>? postcode,
    Expression<String>? latitude,
    Expression<String>? longitude,
    Expression<String>? timezoneOffset,
    Expression<String>? timezoneDescription,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userUuid != null) 'user_uuid': userUuid,
      if (streetNumber != null) 'street_number': streetNumber,
      if (streetName != null) 'street_name': streetName,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (postcode != null) 'postcode': postcode,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (timezoneOffset != null) 'timezone_offset': timezoneOffset,
      if (timezoneDescription != null)
        'timezone_description': timezoneDescription,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocationsCompanion copyWith({
    Value<String>? userUuid,
    Value<int>? streetNumber,
    Value<String>? streetName,
    Value<String>? city,
    Value<String>? state,
    Value<String>? country,
    Value<String>? postcode,
    Value<String>? latitude,
    Value<String>? longitude,
    Value<String>? timezoneOffset,
    Value<String>? timezoneDescription,
    Value<int>? rowid,
  }) {
    return LocationsCompanion(
      userUuid: userUuid ?? this.userUuid,
      streetNumber: streetNumber ?? this.streetNumber,
      streetName: streetName ?? this.streetName,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      postcode: postcode ?? this.postcode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      timezoneOffset: timezoneOffset ?? this.timezoneOffset,
      timezoneDescription: timezoneDescription ?? this.timezoneDescription,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userUuid.present) {
      map['user_uuid'] = Variable<String>(userUuid.value);
    }
    if (streetNumber.present) {
      map['street_number'] = Variable<int>(streetNumber.value);
    }
    if (streetName.present) {
      map['street_name'] = Variable<String>(streetName.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (postcode.present) {
      map['postcode'] = Variable<String>(postcode.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (timezoneOffset.present) {
      map['timezone_offset'] = Variable<String>(timezoneOffset.value);
    }
    if (timezoneDescription.present) {
      map['timezone_description'] = Variable<String>(timezoneDescription.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationsCompanion(')
          ..write('userUuid: $userUuid, ')
          ..write('streetNumber: $streetNumber, ')
          ..write('streetName: $streetName, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('postcode: $postcode, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('timezoneOffset: $timezoneOffset, ')
          ..write('timezoneDescription: $timezoneDescription, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $PersonNamesTable personNames = $PersonNamesTable(this);
  late final $LoginsTable logins = $LoginsTable(this);
  late final $DobInfosTable dobInfos = $DobInfosTable(this);
  late final $RegisteredInfosTable registeredInfos = $RegisteredInfosTable(
    this,
  );
  late final $UserIdsTable userIds = $UserIdsTable(this);
  late final $PicturesTable pictures = $PicturesTable(this);
  late final $LocationsTable locations = $LocationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    users,
    personNames,
    logins,
    dobInfos,
    registeredInfos,
    userIds,
    pictures,
    locations,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('person_names', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('logins', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('dob_infos', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('registered_infos', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('user_ids', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pictures', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'users',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('locations', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      required String uuid,
      required String gender,
      required String email,
      required String phone,
      required String cell,
      required String nat,
      Value<int> rowid,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<String> uuid,
      Value<String> gender,
      Value<String> email,
      Value<String> phone,
      Value<String> cell,
      Value<String> nat,
      Value<int> rowid,
    });

final class $$UsersTableReferences
    extends BaseReferences<_$AppDatabase, $UsersTable, User> {
  $$UsersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PersonNamesTable, List<PersonName>>
  _personNamesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.personNames,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.personNames.userUuid),
  );

  $$PersonNamesTableProcessedTableManager get personNamesRefs {
    final manager = $$PersonNamesTableTableManager(
      $_db,
      $_db.personNames,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(_personNamesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LoginsTable, List<Login>> _loginsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.logins,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.logins.userUuid),
  );

  $$LoginsTableProcessedTableManager get loginsRefs {
    final manager = $$LoginsTableTableManager(
      $_db,
      $_db.logins,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(_loginsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DobInfosTable, List<DobInfo>> _dobInfosRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.dobInfos,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.dobInfos.userUuid),
  );

  $$DobInfosTableProcessedTableManager get dobInfosRefs {
    final manager = $$DobInfosTableTableManager(
      $_db,
      $_db.dobInfos,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(_dobInfosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RegisteredInfosTable, List<RegisteredInfo>>
  _registeredInfosRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.registeredInfos,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.registeredInfos.userUuid),
  );

  $$RegisteredInfosTableProcessedTableManager get registeredInfosRefs {
    final manager = $$RegisteredInfosTableTableManager(
      $_db,
      $_db.registeredInfos,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(
      _registeredInfosRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$UserIdsTable, List<UserId>> _userIdsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.userIds,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.userIds.userUuid),
  );

  $$UserIdsTableProcessedTableManager get userIdsRefs {
    final manager = $$UserIdsTableTableManager(
      $_db,
      $_db.userIds,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(_userIdsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PicturesTable, List<Picture>> _picturesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.pictures,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.pictures.userUuid),
  );

  $$PicturesTableProcessedTableManager get picturesRefs {
    final manager = $$PicturesTableTableManager(
      $_db,
      $_db.pictures,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(_picturesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LocationsTable, List<Location>>
  _locationsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.locations,
    aliasName: $_aliasNameGenerator(db.users.uuid, db.locations.userUuid),
  );

  $$LocationsTableProcessedTableManager get locationsRefs {
    final manager = $$LocationsTableTableManager(
      $_db,
      $_db.locations,
    ).filter((f) => f.userUuid.uuid.sqlEquals($_itemColumn<String>('uuid')!));

    final cache = $_typedResult.readTableOrNull(_locationsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cell => $composableBuilder(
    column: $table.cell,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nat => $composableBuilder(
    column: $table.nat,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> personNamesRefs(
    Expression<bool> Function($$PersonNamesTableFilterComposer f) f,
  ) {
    final $$PersonNamesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.personNames,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonNamesTableFilterComposer(
            $db: $db,
            $table: $db.personNames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> loginsRefs(
    Expression<bool> Function($$LoginsTableFilterComposer f) f,
  ) {
    final $$LoginsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.logins,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoginsTableFilterComposer(
            $db: $db,
            $table: $db.logins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> dobInfosRefs(
    Expression<bool> Function($$DobInfosTableFilterComposer f) f,
  ) {
    final $$DobInfosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.dobInfos,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DobInfosTableFilterComposer(
            $db: $db,
            $table: $db.dobInfos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> registeredInfosRefs(
    Expression<bool> Function($$RegisteredInfosTableFilterComposer f) f,
  ) {
    final $$RegisteredInfosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.registeredInfos,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RegisteredInfosTableFilterComposer(
            $db: $db,
            $table: $db.registeredInfos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> userIdsRefs(
    Expression<bool> Function($$UserIdsTableFilterComposer f) f,
  ) {
    final $$UserIdsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.userIds,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserIdsTableFilterComposer(
            $db: $db,
            $table: $db.userIds,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> picturesRefs(
    Expression<bool> Function($$PicturesTableFilterComposer f) f,
  ) {
    final $$PicturesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.pictures,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PicturesTableFilterComposer(
            $db: $db,
            $table: $db.pictures,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> locationsRefs(
    Expression<bool> Function($$LocationsTableFilterComposer f) f,
  ) {
    final $$LocationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.locations,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationsTableFilterComposer(
            $db: $db,
            $table: $db.locations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cell => $composableBuilder(
    column: $table.cell,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nat => $composableBuilder(
    column: $table.nat,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uuid =>
      $composableBuilder(column: $table.uuid, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get cell =>
      $composableBuilder(column: $table.cell, builder: (column) => column);

  GeneratedColumn<String> get nat =>
      $composableBuilder(column: $table.nat, builder: (column) => column);

  Expression<T> personNamesRefs<T extends Object>(
    Expression<T> Function($$PersonNamesTableAnnotationComposer a) f,
  ) {
    final $$PersonNamesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.personNames,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonNamesTableAnnotationComposer(
            $db: $db,
            $table: $db.personNames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> loginsRefs<T extends Object>(
    Expression<T> Function($$LoginsTableAnnotationComposer a) f,
  ) {
    final $$LoginsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.logins,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoginsTableAnnotationComposer(
            $db: $db,
            $table: $db.logins,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> dobInfosRefs<T extends Object>(
    Expression<T> Function($$DobInfosTableAnnotationComposer a) f,
  ) {
    final $$DobInfosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.dobInfos,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DobInfosTableAnnotationComposer(
            $db: $db,
            $table: $db.dobInfos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> registeredInfosRefs<T extends Object>(
    Expression<T> Function($$RegisteredInfosTableAnnotationComposer a) f,
  ) {
    final $$RegisteredInfosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.registeredInfos,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RegisteredInfosTableAnnotationComposer(
            $db: $db,
            $table: $db.registeredInfos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> userIdsRefs<T extends Object>(
    Expression<T> Function($$UserIdsTableAnnotationComposer a) f,
  ) {
    final $$UserIdsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.userIds,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UserIdsTableAnnotationComposer(
            $db: $db,
            $table: $db.userIds,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> picturesRefs<T extends Object>(
    Expression<T> Function($$PicturesTableAnnotationComposer a) f,
  ) {
    final $$PicturesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.pictures,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PicturesTableAnnotationComposer(
            $db: $db,
            $table: $db.pictures,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> locationsRefs<T extends Object>(
    Expression<T> Function($$LocationsTableAnnotationComposer a) f,
  ) {
    final $$LocationsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.uuid,
      referencedTable: $db.locations,
      getReferencedColumn: (t) => t.userUuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationsTableAnnotationComposer(
            $db: $db,
            $table: $db.locations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, $$UsersTableReferences),
          User,
          PrefetchHooks Function({
            bool personNamesRefs,
            bool loginsRefs,
            bool dobInfosRefs,
            bool registeredInfosRefs,
            bool userIdsRefs,
            bool picturesRefs,
            bool locationsRefs,
          })
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uuid = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> cell = const Value.absent(),
                Value<String> nat = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion(
                uuid: uuid,
                gender: gender,
                email: email,
                phone: phone,
                cell: cell,
                nat: nat,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uuid,
                required String gender,
                required String email,
                required String phone,
                required String cell,
                required String nat,
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion.insert(
                uuid: uuid,
                gender: gender,
                email: email,
                phone: phone,
                cell: cell,
                nat: nat,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$UsersTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                personNamesRefs = false,
                loginsRefs = false,
                dobInfosRefs = false,
                registeredInfosRefs = false,
                userIdsRefs = false,
                picturesRefs = false,
                locationsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (personNamesRefs) db.personNames,
                    if (loginsRefs) db.logins,
                    if (dobInfosRefs) db.dobInfos,
                    if (registeredInfosRefs) db.registeredInfos,
                    if (userIdsRefs) db.userIds,
                    if (picturesRefs) db.pictures,
                    if (locationsRefs) db.locations,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (personNamesRefs)
                        await $_getPrefetchedData<
                          User,
                          $UsersTable,
                          PersonName
                        >(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._personNamesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).personNamesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                      if (loginsRefs)
                        await $_getPrefetchedData<User, $UsersTable, Login>(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._loginsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(db, table, p0).loginsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                      if (dobInfosRefs)
                        await $_getPrefetchedData<User, $UsersTable, DobInfo>(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._dobInfosRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).dobInfosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                      if (registeredInfosRefs)
                        await $_getPrefetchedData<
                          User,
                          $UsersTable,
                          RegisteredInfo
                        >(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._registeredInfosRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).registeredInfosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                      if (userIdsRefs)
                        await $_getPrefetchedData<User, $UsersTable, UserId>(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._userIdsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(db, table, p0).userIdsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                      if (picturesRefs)
                        await $_getPrefetchedData<User, $UsersTable, Picture>(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._picturesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).picturesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                      if (locationsRefs)
                        await $_getPrefetchedData<User, $UsersTable, Location>(
                          currentTable: table,
                          referencedTable: $$UsersTableReferences
                              ._locationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$UsersTableReferences(
                                db,
                                table,
                                p0,
                              ).locationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.userUuid == item.uuid,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, $$UsersTableReferences),
      User,
      PrefetchHooks Function({
        bool personNamesRefs,
        bool loginsRefs,
        bool dobInfosRefs,
        bool registeredInfosRefs,
        bool userIdsRefs,
        bool picturesRefs,
        bool locationsRefs,
      })
    >;
typedef $$PersonNamesTableCreateCompanionBuilder =
    PersonNamesCompanion Function({
      required String userUuid,
      required String title,
      required String first,
      required String last,
      Value<int> rowid,
    });
typedef $$PersonNamesTableUpdateCompanionBuilder =
    PersonNamesCompanion Function({
      Value<String> userUuid,
      Value<String> title,
      Value<String> first,
      Value<String> last,
      Value<int> rowid,
    });

final class $$PersonNamesTableReferences
    extends BaseReferences<_$AppDatabase, $PersonNamesTable, PersonName> {
  $$PersonNamesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.personNames.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PersonNamesTableFilterComposer
    extends Composer<_$AppDatabase, $PersonNamesTable> {
  $$PersonNamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get first => $composableBuilder(
    column: $table.first,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get last => $composableBuilder(
    column: $table.last,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PersonNamesTableOrderingComposer
    extends Composer<_$AppDatabase, $PersonNamesTable> {
  $$PersonNamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get first => $composableBuilder(
    column: $table.first,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get last => $composableBuilder(
    column: $table.last,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PersonNamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PersonNamesTable> {
  $$PersonNamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get first =>
      $composableBuilder(column: $table.first, builder: (column) => column);

  GeneratedColumn<String> get last =>
      $composableBuilder(column: $table.last, builder: (column) => column);

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PersonNamesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PersonNamesTable,
          PersonName,
          $$PersonNamesTableFilterComposer,
          $$PersonNamesTableOrderingComposer,
          $$PersonNamesTableAnnotationComposer,
          $$PersonNamesTableCreateCompanionBuilder,
          $$PersonNamesTableUpdateCompanionBuilder,
          (PersonName, $$PersonNamesTableReferences),
          PersonName,
          PrefetchHooks Function({bool userUuid})
        > {
  $$PersonNamesTableTableManager(_$AppDatabase db, $PersonNamesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PersonNamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PersonNamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PersonNamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> first = const Value.absent(),
                Value<String> last = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PersonNamesCompanion(
                userUuid: userUuid,
                title: title,
                first: first,
                last: last,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                required String title,
                required String first,
                required String last,
                Value<int> rowid = const Value.absent(),
              }) => PersonNamesCompanion.insert(
                userUuid: userUuid,
                title: title,
                first: first,
                last: last,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PersonNamesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable: $$PersonNamesTableReferences
                                    ._userUuidTable(db),
                                referencedColumn: $$PersonNamesTableReferences
                                    ._userUuidTable(db)
                                    .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PersonNamesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PersonNamesTable,
      PersonName,
      $$PersonNamesTableFilterComposer,
      $$PersonNamesTableOrderingComposer,
      $$PersonNamesTableAnnotationComposer,
      $$PersonNamesTableCreateCompanionBuilder,
      $$PersonNamesTableUpdateCompanionBuilder,
      (PersonName, $$PersonNamesTableReferences),
      PersonName,
      PrefetchHooks Function({bool userUuid})
    >;
typedef $$LoginsTableCreateCompanionBuilder =
    LoginsCompanion Function({
      required String userUuid,
      required String uuid,
      required String username,
      required String password,
      required String salt,
      required String md5,
      required String sha1,
      required String sha256,
      Value<int> rowid,
    });
typedef $$LoginsTableUpdateCompanionBuilder =
    LoginsCompanion Function({
      Value<String> userUuid,
      Value<String> uuid,
      Value<String> username,
      Value<String> password,
      Value<String> salt,
      Value<String> md5,
      Value<String> sha1,
      Value<String> sha256,
      Value<int> rowid,
    });

final class $$LoginsTableReferences
    extends BaseReferences<_$AppDatabase, $LoginsTable, Login> {
  $$LoginsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.logins.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LoginsTableFilterComposer
    extends Composer<_$AppDatabase, $LoginsTable> {
  $$LoginsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get salt => $composableBuilder(
    column: $table.salt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get md5 => $composableBuilder(
    column: $table.md5,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sha1 => $composableBuilder(
    column: $table.sha1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sha256 => $composableBuilder(
    column: $table.sha256,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LoginsTableOrderingComposer
    extends Composer<_$AppDatabase, $LoginsTable> {
  $$LoginsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get salt => $composableBuilder(
    column: $table.salt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get md5 => $composableBuilder(
    column: $table.md5,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sha1 => $composableBuilder(
    column: $table.sha1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sha256 => $composableBuilder(
    column: $table.sha256,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LoginsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoginsTable> {
  $$LoginsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uuid =>
      $composableBuilder(column: $table.uuid, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<String> get salt =>
      $composableBuilder(column: $table.salt, builder: (column) => column);

  GeneratedColumn<String> get md5 =>
      $composableBuilder(column: $table.md5, builder: (column) => column);

  GeneratedColumn<String> get sha1 =>
      $composableBuilder(column: $table.sha1, builder: (column) => column);

  GeneratedColumn<String> get sha256 =>
      $composableBuilder(column: $table.sha256, builder: (column) => column);

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LoginsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoginsTable,
          Login,
          $$LoginsTableFilterComposer,
          $$LoginsTableOrderingComposer,
          $$LoginsTableAnnotationComposer,
          $$LoginsTableCreateCompanionBuilder,
          $$LoginsTableUpdateCompanionBuilder,
          (Login, $$LoginsTableReferences),
          Login,
          PrefetchHooks Function({bool userUuid})
        > {
  $$LoginsTableTableManager(_$AppDatabase db, $LoginsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoginsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoginsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoginsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<String> uuid = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String> password = const Value.absent(),
                Value<String> salt = const Value.absent(),
                Value<String> md5 = const Value.absent(),
                Value<String> sha1 = const Value.absent(),
                Value<String> sha256 = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoginsCompanion(
                userUuid: userUuid,
                uuid: uuid,
                username: username,
                password: password,
                salt: salt,
                md5: md5,
                sha1: sha1,
                sha256: sha256,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                required String uuid,
                required String username,
                required String password,
                required String salt,
                required String md5,
                required String sha1,
                required String sha256,
                Value<int> rowid = const Value.absent(),
              }) => LoginsCompanion.insert(
                userUuid: userUuid,
                uuid: uuid,
                username: username,
                password: password,
                salt: salt,
                md5: md5,
                sha1: sha1,
                sha256: sha256,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$LoginsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable: $$LoginsTableReferences
                                    ._userUuidTable(db),
                                referencedColumn: $$LoginsTableReferences
                                    ._userUuidTable(db)
                                    .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LoginsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoginsTable,
      Login,
      $$LoginsTableFilterComposer,
      $$LoginsTableOrderingComposer,
      $$LoginsTableAnnotationComposer,
      $$LoginsTableCreateCompanionBuilder,
      $$LoginsTableUpdateCompanionBuilder,
      (Login, $$LoginsTableReferences),
      Login,
      PrefetchHooks Function({bool userUuid})
    >;
typedef $$DobInfosTableCreateCompanionBuilder =
    DobInfosCompanion Function({
      required String userUuid,
      Value<String?> date,
      required int age,
      Value<int> rowid,
    });
typedef $$DobInfosTableUpdateCompanionBuilder =
    DobInfosCompanion Function({
      Value<String> userUuid,
      Value<String?> date,
      Value<int> age,
      Value<int> rowid,
    });

final class $$DobInfosTableReferences
    extends BaseReferences<_$AppDatabase, $DobInfosTable, DobInfo> {
  $$DobInfosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.dobInfos.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DobInfosTableFilterComposer
    extends Composer<_$AppDatabase, $DobInfosTable> {
  $$DobInfosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DobInfosTableOrderingComposer
    extends Composer<_$AppDatabase, $DobInfosTable> {
  $$DobInfosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DobInfosTableAnnotationComposer
    extends Composer<_$AppDatabase, $DobInfosTable> {
  $$DobInfosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DobInfosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DobInfosTable,
          DobInfo,
          $$DobInfosTableFilterComposer,
          $$DobInfosTableOrderingComposer,
          $$DobInfosTableAnnotationComposer,
          $$DobInfosTableCreateCompanionBuilder,
          $$DobInfosTableUpdateCompanionBuilder,
          (DobInfo, $$DobInfosTableReferences),
          DobInfo,
          PrefetchHooks Function({bool userUuid})
        > {
  $$DobInfosTableTableManager(_$AppDatabase db, $DobInfosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DobInfosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DobInfosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DobInfosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<String?> date = const Value.absent(),
                Value<int> age = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DobInfosCompanion(
                userUuid: userUuid,
                date: date,
                age: age,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                Value<String?> date = const Value.absent(),
                required int age,
                Value<int> rowid = const Value.absent(),
              }) => DobInfosCompanion.insert(
                userUuid: userUuid,
                date: date,
                age: age,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DobInfosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable: $$DobInfosTableReferences
                                    ._userUuidTable(db),
                                referencedColumn: $$DobInfosTableReferences
                                    ._userUuidTable(db)
                                    .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DobInfosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DobInfosTable,
      DobInfo,
      $$DobInfosTableFilterComposer,
      $$DobInfosTableOrderingComposer,
      $$DobInfosTableAnnotationComposer,
      $$DobInfosTableCreateCompanionBuilder,
      $$DobInfosTableUpdateCompanionBuilder,
      (DobInfo, $$DobInfosTableReferences),
      DobInfo,
      PrefetchHooks Function({bool userUuid})
    >;
typedef $$RegisteredInfosTableCreateCompanionBuilder =
    RegisteredInfosCompanion Function({
      required String userUuid,
      Value<String?> dateIso,
      required int age,
      Value<int> rowid,
    });
typedef $$RegisteredInfosTableUpdateCompanionBuilder =
    RegisteredInfosCompanion Function({
      Value<String> userUuid,
      Value<String?> dateIso,
      Value<int> age,
      Value<int> rowid,
    });

final class $$RegisteredInfosTableReferences
    extends
        BaseReferences<_$AppDatabase, $RegisteredInfosTable, RegisteredInfo> {
  $$RegisteredInfosTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.registeredInfos.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RegisteredInfosTableFilterComposer
    extends Composer<_$AppDatabase, $RegisteredInfosTable> {
  $$RegisteredInfosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get dateIso => $composableBuilder(
    column: $table.dateIso,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RegisteredInfosTableOrderingComposer
    extends Composer<_$AppDatabase, $RegisteredInfosTable> {
  $$RegisteredInfosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get dateIso => $composableBuilder(
    column: $table.dateIso,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RegisteredInfosTableAnnotationComposer
    extends Composer<_$AppDatabase, $RegisteredInfosTable> {
  $$RegisteredInfosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get dateIso =>
      $composableBuilder(column: $table.dateIso, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RegisteredInfosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RegisteredInfosTable,
          RegisteredInfo,
          $$RegisteredInfosTableFilterComposer,
          $$RegisteredInfosTableOrderingComposer,
          $$RegisteredInfosTableAnnotationComposer,
          $$RegisteredInfosTableCreateCompanionBuilder,
          $$RegisteredInfosTableUpdateCompanionBuilder,
          (RegisteredInfo, $$RegisteredInfosTableReferences),
          RegisteredInfo,
          PrefetchHooks Function({bool userUuid})
        > {
  $$RegisteredInfosTableTableManager(
    _$AppDatabase db,
    $RegisteredInfosTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RegisteredInfosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RegisteredInfosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RegisteredInfosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<String?> dateIso = const Value.absent(),
                Value<int> age = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RegisteredInfosCompanion(
                userUuid: userUuid,
                dateIso: dateIso,
                age: age,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                Value<String?> dateIso = const Value.absent(),
                required int age,
                Value<int> rowid = const Value.absent(),
              }) => RegisteredInfosCompanion.insert(
                userUuid: userUuid,
                dateIso: dateIso,
                age: age,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RegisteredInfosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable:
                                    $$RegisteredInfosTableReferences
                                        ._userUuidTable(db),
                                referencedColumn:
                                    $$RegisteredInfosTableReferences
                                        ._userUuidTable(db)
                                        .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RegisteredInfosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RegisteredInfosTable,
      RegisteredInfo,
      $$RegisteredInfosTableFilterComposer,
      $$RegisteredInfosTableOrderingComposer,
      $$RegisteredInfosTableAnnotationComposer,
      $$RegisteredInfosTableCreateCompanionBuilder,
      $$RegisteredInfosTableUpdateCompanionBuilder,
      (RegisteredInfo, $$RegisteredInfosTableReferences),
      RegisteredInfo,
      PrefetchHooks Function({bool userUuid})
    >;
typedef $$UserIdsTableCreateCompanionBuilder =
    UserIdsCompanion Function({
      required String userUuid,
      required String name,
      required String value,
      Value<int> rowid,
    });
typedef $$UserIdsTableUpdateCompanionBuilder =
    UserIdsCompanion Function({
      Value<String> userUuid,
      Value<String> name,
      Value<String> value,
      Value<int> rowid,
    });

final class $$UserIdsTableReferences
    extends BaseReferences<_$AppDatabase, $UserIdsTable, UserId> {
  $$UserIdsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.userIds.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$UserIdsTableFilterComposer
    extends Composer<_$AppDatabase, $UserIdsTable> {
  $$UserIdsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UserIdsTableOrderingComposer
    extends Composer<_$AppDatabase, $UserIdsTable> {
  $$UserIdsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UserIdsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserIdsTable> {
  $$UserIdsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UserIdsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserIdsTable,
          UserId,
          $$UserIdsTableFilterComposer,
          $$UserIdsTableOrderingComposer,
          $$UserIdsTableAnnotationComposer,
          $$UserIdsTableCreateCompanionBuilder,
          $$UserIdsTableUpdateCompanionBuilder,
          (UserId, $$UserIdsTableReferences),
          UserId,
          PrefetchHooks Function({bool userUuid})
        > {
  $$UserIdsTableTableManager(_$AppDatabase db, $UserIdsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserIdsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserIdsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserIdsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserIdsCompanion(
                userUuid: userUuid,
                name: name,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                required String name,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => UserIdsCompanion.insert(
                userUuid: userUuid,
                name: name,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$UserIdsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable: $$UserIdsTableReferences
                                    ._userUuidTable(db),
                                referencedColumn: $$UserIdsTableReferences
                                    ._userUuidTable(db)
                                    .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$UserIdsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserIdsTable,
      UserId,
      $$UserIdsTableFilterComposer,
      $$UserIdsTableOrderingComposer,
      $$UserIdsTableAnnotationComposer,
      $$UserIdsTableCreateCompanionBuilder,
      $$UserIdsTableUpdateCompanionBuilder,
      (UserId, $$UserIdsTableReferences),
      UserId,
      PrefetchHooks Function({bool userUuid})
    >;
typedef $$PicturesTableCreateCompanionBuilder =
    PicturesCompanion Function({
      required String userUuid,
      required String large,
      required String medium,
      required String thumbnail,
      Value<int> rowid,
    });
typedef $$PicturesTableUpdateCompanionBuilder =
    PicturesCompanion Function({
      Value<String> userUuid,
      Value<String> large,
      Value<String> medium,
      Value<String> thumbnail,
      Value<int> rowid,
    });

final class $$PicturesTableReferences
    extends BaseReferences<_$AppDatabase, $PicturesTable, Picture> {
  $$PicturesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.pictures.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PicturesTableFilterComposer
    extends Composer<_$AppDatabase, $PicturesTable> {
  $$PicturesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get large => $composableBuilder(
    column: $table.large,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get medium => $composableBuilder(
    column: $table.medium,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnail => $composableBuilder(
    column: $table.thumbnail,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PicturesTableOrderingComposer
    extends Composer<_$AppDatabase, $PicturesTable> {
  $$PicturesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get large => $composableBuilder(
    column: $table.large,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get medium => $composableBuilder(
    column: $table.medium,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnail => $composableBuilder(
    column: $table.thumbnail,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PicturesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PicturesTable> {
  $$PicturesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get large =>
      $composableBuilder(column: $table.large, builder: (column) => column);

  GeneratedColumn<String> get medium =>
      $composableBuilder(column: $table.medium, builder: (column) => column);

  GeneratedColumn<String> get thumbnail =>
      $composableBuilder(column: $table.thumbnail, builder: (column) => column);

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PicturesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PicturesTable,
          Picture,
          $$PicturesTableFilterComposer,
          $$PicturesTableOrderingComposer,
          $$PicturesTableAnnotationComposer,
          $$PicturesTableCreateCompanionBuilder,
          $$PicturesTableUpdateCompanionBuilder,
          (Picture, $$PicturesTableReferences),
          Picture,
          PrefetchHooks Function({bool userUuid})
        > {
  $$PicturesTableTableManager(_$AppDatabase db, $PicturesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PicturesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PicturesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PicturesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<String> large = const Value.absent(),
                Value<String> medium = const Value.absent(),
                Value<String> thumbnail = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PicturesCompanion(
                userUuid: userUuid,
                large: large,
                medium: medium,
                thumbnail: thumbnail,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                required String large,
                required String medium,
                required String thumbnail,
                Value<int> rowid = const Value.absent(),
              }) => PicturesCompanion.insert(
                userUuid: userUuid,
                large: large,
                medium: medium,
                thumbnail: thumbnail,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PicturesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable: $$PicturesTableReferences
                                    ._userUuidTable(db),
                                referencedColumn: $$PicturesTableReferences
                                    ._userUuidTable(db)
                                    .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PicturesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PicturesTable,
      Picture,
      $$PicturesTableFilterComposer,
      $$PicturesTableOrderingComposer,
      $$PicturesTableAnnotationComposer,
      $$PicturesTableCreateCompanionBuilder,
      $$PicturesTableUpdateCompanionBuilder,
      (Picture, $$PicturesTableReferences),
      Picture,
      PrefetchHooks Function({bool userUuid})
    >;
typedef $$LocationsTableCreateCompanionBuilder =
    LocationsCompanion Function({
      required String userUuid,
      required int streetNumber,
      required String streetName,
      required String city,
      required String state,
      required String country,
      required String postcode,
      required String latitude,
      required String longitude,
      required String timezoneOffset,
      required String timezoneDescription,
      Value<int> rowid,
    });
typedef $$LocationsTableUpdateCompanionBuilder =
    LocationsCompanion Function({
      Value<String> userUuid,
      Value<int> streetNumber,
      Value<String> streetName,
      Value<String> city,
      Value<String> state,
      Value<String> country,
      Value<String> postcode,
      Value<String> latitude,
      Value<String> longitude,
      Value<String> timezoneOffset,
      Value<String> timezoneDescription,
      Value<int> rowid,
    });

final class $$LocationsTableReferences
    extends BaseReferences<_$AppDatabase, $LocationsTable, Location> {
  $$LocationsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userUuidTable(_$AppDatabase db) => db.users.createAlias(
    $_aliasNameGenerator(db.locations.userUuid, db.users.uuid),
  );

  $$UsersTableProcessedTableManager get userUuid {
    final $_column = $_itemColumn<String>('user_uuid')!;

    final manager = $$UsersTableTableManager(
      $_db,
      $_db.users,
    ).filter((f) => f.uuid.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LocationsTableFilterComposer
    extends Composer<_$AppDatabase, $LocationsTable> {
  $$LocationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get streetNumber => $composableBuilder(
    column: $table.streetNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get streetName => $composableBuilder(
    column: $table.streetName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get postcode => $composableBuilder(
    column: $table.postcode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timezoneOffset => $composableBuilder(
    column: $table.timezoneOffset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timezoneDescription => $composableBuilder(
    column: $table.timezoneDescription,
    builder: (column) => ColumnFilters(column),
  );

  $$UsersTableFilterComposer get userUuid {
    final $$UsersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableFilterComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocationsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocationsTable> {
  $$LocationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get streetNumber => $composableBuilder(
    column: $table.streetNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get streetName => $composableBuilder(
    column: $table.streetName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get postcode => $composableBuilder(
    column: $table.postcode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timezoneOffset => $composableBuilder(
    column: $table.timezoneOffset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timezoneDescription => $composableBuilder(
    column: $table.timezoneDescription,
    builder: (column) => ColumnOrderings(column),
  );

  $$UsersTableOrderingComposer get userUuid {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableOrderingComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocationsTable> {
  $$LocationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get streetNumber => $composableBuilder(
    column: $table.streetNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get streetName => $composableBuilder(
    column: $table.streetName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get postcode =>
      $composableBuilder(column: $table.postcode, builder: (column) => column);

  GeneratedColumn<String> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<String> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<String> get timezoneOffset => $composableBuilder(
    column: $table.timezoneOffset,
    builder: (column) => column,
  );

  GeneratedColumn<String> get timezoneDescription => $composableBuilder(
    column: $table.timezoneDescription,
    builder: (column) => column,
  );

  $$UsersTableAnnotationComposer get userUuid {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.userUuid,
      referencedTable: $db.users,
      getReferencedColumn: (t) => t.uuid,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UsersTableAnnotationComposer(
            $db: $db,
            $table: $db.users,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocationsTable,
          Location,
          $$LocationsTableFilterComposer,
          $$LocationsTableOrderingComposer,
          $$LocationsTableAnnotationComposer,
          $$LocationsTableCreateCompanionBuilder,
          $$LocationsTableUpdateCompanionBuilder,
          (Location, $$LocationsTableReferences),
          Location,
          PrefetchHooks Function({bool userUuid})
        > {
  $$LocationsTableTableManager(_$AppDatabase db, $LocationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userUuid = const Value.absent(),
                Value<int> streetNumber = const Value.absent(),
                Value<String> streetName = const Value.absent(),
                Value<String> city = const Value.absent(),
                Value<String> state = const Value.absent(),
                Value<String> country = const Value.absent(),
                Value<String> postcode = const Value.absent(),
                Value<String> latitude = const Value.absent(),
                Value<String> longitude = const Value.absent(),
                Value<String> timezoneOffset = const Value.absent(),
                Value<String> timezoneDescription = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocationsCompanion(
                userUuid: userUuid,
                streetNumber: streetNumber,
                streetName: streetName,
                city: city,
                state: state,
                country: country,
                postcode: postcode,
                latitude: latitude,
                longitude: longitude,
                timezoneOffset: timezoneOffset,
                timezoneDescription: timezoneDescription,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userUuid,
                required int streetNumber,
                required String streetName,
                required String city,
                required String state,
                required String country,
                required String postcode,
                required String latitude,
                required String longitude,
                required String timezoneOffset,
                required String timezoneDescription,
                Value<int> rowid = const Value.absent(),
              }) => LocationsCompanion.insert(
                userUuid: userUuid,
                streetNumber: streetNumber,
                streetName: streetName,
                city: city,
                state: state,
                country: country,
                postcode: postcode,
                latitude: latitude,
                longitude: longitude,
                timezoneOffset: timezoneOffset,
                timezoneDescription: timezoneDescription,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({userUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (userUuid) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.userUuid,
                                referencedTable: $$LocationsTableReferences
                                    ._userUuidTable(db),
                                referencedColumn: $$LocationsTableReferences
                                    ._userUuidTable(db)
                                    .uuid,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LocationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocationsTable,
      Location,
      $$LocationsTableFilterComposer,
      $$LocationsTableOrderingComposer,
      $$LocationsTableAnnotationComposer,
      $$LocationsTableCreateCompanionBuilder,
      $$LocationsTableUpdateCompanionBuilder,
      (Location, $$LocationsTableReferences),
      Location,
      PrefetchHooks Function({bool userUuid})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$PersonNamesTableTableManager get personNames =>
      $$PersonNamesTableTableManager(_db, _db.personNames);
  $$LoginsTableTableManager get logins =>
      $$LoginsTableTableManager(_db, _db.logins);
  $$DobInfosTableTableManager get dobInfos =>
      $$DobInfosTableTableManager(_db, _db.dobInfos);
  $$RegisteredInfosTableTableManager get registeredInfos =>
      $$RegisteredInfosTableTableManager(_db, _db.registeredInfos);
  $$UserIdsTableTableManager get userIds =>
      $$UserIdsTableTableManager(_db, _db.userIds);
  $$PicturesTableTableManager get pictures =>
      $$PicturesTableTableManager(_db, _db.pictures);
  $$LocationsTableTableManager get locations =>
      $$LocationsTableTableManager(_db, _db.locations);
}
