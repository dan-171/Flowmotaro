// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserCollection on Isar {
  IsarCollection<User> get users => this.collection();
}

const UserSchema = CollectionSchema(
  name: r'User',
  id: -7838171048429979076,
  properties: {
    r'breakActive': PropertySchema(
      id: 0,
      name: r'breakActive',
      type: IsarType.bool,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'focusActive': PropertySchema(
      id: 2,
      name: r'focusActive',
      type: IsarType.bool,
    ),
    r'highestStreak': PropertySchema(
      id: 3,
      name: r'highestStreak',
      type: IsarType.long,
    ),
    r'isSynced': PropertySchema(id: 4, name: r'isSynced', type: IsarType.bool),
    r'lastFocusAt': PropertySchema(
      id: 5,
      name: r'lastFocusAt',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(id: 6, name: r'name', type: IsarType.string),
    r'streakCount': PropertySchema(
      id: 7,
      name: r'streakCount',
      type: IsarType.long,
    ),
    r'taroCount': PropertySchema(
      id: 8,
      name: r'taroCount',
      type: IsarType.long,
    ),
    r'uuId': PropertySchema(id: 9, name: r'uuId', type: IsarType.string),
    r'weekFocusDuration': PropertySchema(
      id: 10,
      name: r'weekFocusDuration',
      type: IsarType.long,
    ),
  },

  estimateSize: _userEstimateSize,
  serialize: _userSerialize,
  deserialize: _userDeserialize,
  deserializeProp: _userDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _userGetId,
  getLinks: _userGetLinks,
  attach: _userAttach,
  version: '3.3.2',
);

int _userEstimateSize(
  User object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.uuId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userSerialize(
  User object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.breakActive);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeBool(offsets[2], object.focusActive);
  writer.writeLong(offsets[3], object.highestStreak);
  writer.writeBool(offsets[4], object.isSynced);
  writer.writeDateTime(offsets[5], object.lastFocusAt);
  writer.writeString(offsets[6], object.name);
  writer.writeLong(offsets[7], object.streakCount);
  writer.writeLong(offsets[8], object.taroCount);
  writer.writeString(offsets[9], object.uuId);
  writer.writeLong(offsets[10], object.weekFocusDuration);
}

User _userDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = User();
  object.breakActive = reader.readBool(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.focusActive = reader.readBool(offsets[2]);
  object.highestStreak = reader.readLong(offsets[3]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[4]);
  object.lastFocusAt = reader.readDateTime(offsets[5]);
  object.name = reader.readString(offsets[6]);
  object.streakCount = reader.readLong(offsets[7]);
  object.taroCount = reader.readLong(offsets[8]);
  object.uuId = reader.readStringOrNull(offsets[9]);
  object.weekFocusDuration = reader.readLong(offsets[10]);
  return object;
}

P _userDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userGetId(User object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userGetLinks(User object) {
  return [];
}

void _userAttach(IsarCollection<dynamic> col, Id id, User object) {
  object.id = id;
}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> breakActiveEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'breakActive', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createdAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> focusActiveEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'focusActive', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> highestStreakEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'highestStreak', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> highestStreakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'highestStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> highestStreakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'highestStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> highestStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'highestStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isSynced', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastFocusAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'lastFocusAt', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastFocusAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'lastFocusAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastFocusAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'lastFocusAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> lastFocusAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'lastFocusAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> streakCountEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'streakCount', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> streakCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'streakCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> streakCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'streakCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> streakCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'streakCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> taroCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'taroCount', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> taroCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'taroCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> taroCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'taroCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> taroCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'taroCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'uuId'),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'uuId'),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'uuId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'uuId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'uuId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'uuId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'uuId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'uuId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'uuId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'uuId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'uuId', value: ''),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> uuIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'uuId', value: ''),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> weekFocusDurationEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'weekFocusDuration', value: value),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> weekFocusDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'weekFocusDuration',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> weekFocusDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'weekFocusDuration',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> weekFocusDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'weekFocusDuration',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension UserQueryObject on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQuerySortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByBreakActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByBreakActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByFocusActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByFocusActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByHighestStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByHighestStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLastFocusAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLastFocusAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByStreakCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByStreakCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByTaroCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByTaroCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUuId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuId', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUuIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuId', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByWeekFocusDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByWeekFocusDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.desc);
    });
  }
}

extension UserQuerySortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByBreakActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByBreakActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByFocusActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByFocusActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByHighestStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByHighestStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLastFocusAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLastFocusAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByStreakCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByStreakCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByTaroCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByTaroCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUuId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuId', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUuIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuId', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByWeekFocusDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByWeekFocusDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.desc);
    });
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByBreakActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breakActive');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByFocusActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'focusActive');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByHighestStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'highestStreak');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByLastFocusAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastFocusAt');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByStreakCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streakCount');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByTaroCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taroCount');
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByUuId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByWeekFocusDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weekFocusDuration');
    });
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<User, bool, QQueryOperations> breakActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breakActive');
    });
  }

  QueryBuilder<User, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<User, bool, QQueryOperations> focusActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'focusActive');
    });
  }

  QueryBuilder<User, int, QQueryOperations> highestStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'highestStreak');
    });
  }

  QueryBuilder<User, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<User, DateTime, QQueryOperations> lastFocusAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastFocusAt');
    });
  }

  QueryBuilder<User, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<User, int, QQueryOperations> streakCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streakCount');
    });
  }

  QueryBuilder<User, int, QQueryOperations> taroCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taroCount');
    });
  }

  QueryBuilder<User, String?, QQueryOperations> uuIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuId');
    });
  }

  QueryBuilder<User, int, QQueryOperations> weekFocusDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weekFocusDuration');
    });
  }
}
