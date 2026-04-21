// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_session.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFocusSessionCollection on Isar {
  IsarCollection<FocusSession> get focusSessions => this.collection();
}

const FocusSessionSchema = CollectionSchema(
  name: r'FocusSession',
  id: 7529488139707530527,
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
    r'streakCount': PropertySchema(
      id: 6,
      name: r'streakCount',
      type: IsarType.long,
    ),
    r'taroCount': PropertySchema(
      id: 7,
      name: r'taroCount',
      type: IsarType.long,
    ),
    r'weekFocusDuration': PropertySchema(
      id: 8,
      name: r'weekFocusDuration',
      type: IsarType.long,
    ),
  },

  estimateSize: _focusSessionEstimateSize,
  serialize: _focusSessionSerialize,
  deserialize: _focusSessionDeserialize,
  deserializeProp: _focusSessionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'user': LinkSchema(
      id: -4400608241414530622,
      name: r'user',
      target: r'User',
      single: true,
    ),
  },
  embeddedSchemas: {},

  getId: _focusSessionGetId,
  getLinks: _focusSessionGetLinks,
  attach: _focusSessionAttach,
  version: '3.3.2',
);

int _focusSessionEstimateSize(
  FocusSession object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _focusSessionSerialize(
  FocusSession object,
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
  writer.writeLong(offsets[6], object.streakCount);
  writer.writeLong(offsets[7], object.taroCount);
  writer.writeLong(offsets[8], object.weekFocusDuration);
}

FocusSession _focusSessionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FocusSession();
  object.breakActive = reader.readBool(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.focusActive = reader.readBool(offsets[2]);
  object.highestStreak = reader.readLong(offsets[3]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[4]);
  object.lastFocusAt = reader.readDateTime(offsets[5]);
  object.streakCount = reader.readLong(offsets[6]);
  object.taroCount = reader.readLong(offsets[7]);
  object.weekFocusDuration = reader.readLong(offsets[8]);
  return object;
}

P _focusSessionDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _focusSessionGetId(FocusSession object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _focusSessionGetLinks(FocusSession object) {
  return [object.user];
}

void _focusSessionAttach(
  IsarCollection<dynamic> col,
  Id id,
  FocusSession object,
) {
  object.id = id;
  object.user.attach(col, col.isar.collection<User>(), r'user', id);
}

extension FocusSessionQueryWhereSort
    on QueryBuilder<FocusSession, FocusSession, QWhere> {
  QueryBuilder<FocusSession, FocusSession, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FocusSessionQueryWhere
    on QueryBuilder<FocusSession, FocusSession, QWhereClause> {
  QueryBuilder<FocusSession, FocusSession, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterWhereClause> idBetween(
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

extension FocusSessionQueryFilter
    on QueryBuilder<FocusSession, FocusSession, QFilterCondition> {
  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  breakActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'breakActive', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  createdAtGreaterThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  createdAtLessThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  createdAtBetween(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  focusActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'focusActive', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  highestStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'highestStreak', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  highestStreakGreaterThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  highestStreakLessThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  highestStreakBetween(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition> idBetween(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isSynced', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  lastFocusAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'lastFocusAt', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  lastFocusAtGreaterThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  lastFocusAtLessThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  lastFocusAtBetween(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  streakCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'streakCount', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  streakCountGreaterThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  streakCountLessThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  streakCountBetween(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  taroCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'taroCount', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  taroCountGreaterThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  taroCountLessThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  taroCountBetween(
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  weekFocusDurationEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'weekFocusDuration', value: value),
      );
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  weekFocusDurationGreaterThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  weekFocusDurationLessThan(int value, {bool include = false}) {
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

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition>
  weekFocusDurationBetween(
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

extension FocusSessionQueryObject
    on QueryBuilder<FocusSession, FocusSession, QFilterCondition> {}

extension FocusSessionQueryLinks
    on QueryBuilder<FocusSession, FocusSession, QFilterCondition> {
  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition> user(
    FilterQuery<User> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension FocusSessionQuerySortBy
    on QueryBuilder<FocusSession, FocusSession, QSortBy> {
  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByBreakActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByBreakActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByFocusActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByFocusActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByHighestStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByHighestStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByLastFocusAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByLastFocusAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByStreakCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByStreakCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByTaroCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> sortByTaroCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByWeekFocusDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  sortByWeekFocusDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.desc);
    });
  }
}

extension FocusSessionQuerySortThenBy
    on QueryBuilder<FocusSession, FocusSession, QSortThenBy> {
  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByBreakActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByBreakActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakActive', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByFocusActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByFocusActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'focusActive', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByHighestStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByHighestStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestStreak', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByLastFocusAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByLastFocusAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFocusAt', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByStreakCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByStreakCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streakCount', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByTaroCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy> thenByTaroCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taroCount', Sort.desc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByWeekFocusDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.asc);
    });
  }

  QueryBuilder<FocusSession, FocusSession, QAfterSortBy>
  thenByWeekFocusDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weekFocusDuration', Sort.desc);
    });
  }
}

extension FocusSessionQueryWhereDistinct
    on QueryBuilder<FocusSession, FocusSession, QDistinct> {
  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByBreakActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breakActive');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByFocusActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'focusActive');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct>
  distinctByHighestStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'highestStreak');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByLastFocusAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastFocusAt');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByStreakCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streakCount');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct> distinctByTaroCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taroCount');
    });
  }

  QueryBuilder<FocusSession, FocusSession, QDistinct>
  distinctByWeekFocusDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weekFocusDuration');
    });
  }
}

extension FocusSessionQueryProperty
    on QueryBuilder<FocusSession, FocusSession, QQueryProperty> {
  QueryBuilder<FocusSession, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FocusSession, bool, QQueryOperations> breakActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breakActive');
    });
  }

  QueryBuilder<FocusSession, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<FocusSession, bool, QQueryOperations> focusActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'focusActive');
    });
  }

  QueryBuilder<FocusSession, int, QQueryOperations> highestStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'highestStreak');
    });
  }

  QueryBuilder<FocusSession, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<FocusSession, DateTime, QQueryOperations> lastFocusAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastFocusAt');
    });
  }

  QueryBuilder<FocusSession, int, QQueryOperations> streakCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streakCount');
    });
  }

  QueryBuilder<FocusSession, int, QQueryOperations> taroCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taroCount');
    });
  }

  QueryBuilder<FocusSession, int, QQueryOperations>
  weekFocusDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weekFocusDuration');
    });
  }
}
