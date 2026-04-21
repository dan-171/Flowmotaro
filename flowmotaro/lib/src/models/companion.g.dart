// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companion.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCompanionCollection on Isar {
  IsarCollection<Companion> get companions => this.collection();
}

const CompanionSchema = CollectionSchema(
  name: r'Companion',
  id: 6664779935200683817,
  properties: {
    r'feedMeter': PropertySchema(
      id: 0,
      name: r'feedMeter',
      type: IsarType.long,
    ),
    r'hatId': PropertySchema(id: 1, name: r'hatId', type: IsarType.long),
    r'isSynced': PropertySchema(id: 2, name: r'isSynced', type: IsarType.bool),
    r'lastFed': PropertySchema(
      id: 3,
      name: r'lastFed',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(id: 4, name: r'name', type: IsarType.string),
  },

  estimateSize: _companionEstimateSize,
  serialize: _companionSerialize,
  deserialize: _companionDeserialize,
  deserializeProp: _companionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'user': LinkSchema(
      id: 1149377059765789063,
      name: r'user',
      target: r'User',
      single: true,
    ),
  },
  embeddedSchemas: {},

  getId: _companionGetId,
  getLinks: _companionGetLinks,
  attach: _companionAttach,
  version: '3.3.2',
);

int _companionEstimateSize(
  Companion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _companionSerialize(
  Companion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.feedMeter);
  writer.writeLong(offsets[1], object.hatId);
  writer.writeBool(offsets[2], object.isSynced);
  writer.writeDateTime(offsets[3], object.lastFed);
  writer.writeString(offsets[4], object.name);
}

Companion _companionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Companion();
  object.feedMeter = reader.readLong(offsets[0]);
  object.hatId = reader.readLong(offsets[1]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[2]);
  object.lastFed = reader.readDateTime(offsets[3]);
  object.name = reader.readString(offsets[4]);
  return object;
}

P _companionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _companionGetId(Companion object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _companionGetLinks(Companion object) {
  return [object.user];
}

void _companionAttach(IsarCollection<dynamic> col, Id id, Companion object) {
  object.id = id;
  object.user.attach(col, col.isar.collection<User>(), r'user', id);
}

extension CompanionQueryWhereSort
    on QueryBuilder<Companion, Companion, QWhere> {
  QueryBuilder<Companion, Companion, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CompanionQueryWhere
    on QueryBuilder<Companion, Companion, QWhereClause> {
  QueryBuilder<Companion, Companion, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<Companion, Companion, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Companion, Companion, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterWhereClause> idBetween(
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

extension CompanionQueryFilter
    on QueryBuilder<Companion, Companion, QFilterCondition> {
  QueryBuilder<Companion, Companion, QAfterFilterCondition> feedMeterEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'feedMeter', value: value),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition>
  feedMeterGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'feedMeter',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> feedMeterLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'feedMeter',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> feedMeterBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'feedMeter',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> hatIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'hatId', value: value),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> hatIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'hatId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> hatIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'hatId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> hatIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'hatId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> isSyncedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isSynced', value: value),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> lastFedEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'lastFed', value: value),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> lastFedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'lastFed',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> lastFedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'lastFed',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> lastFedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'lastFed',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }
}

extension CompanionQueryObject
    on QueryBuilder<Companion, Companion, QFilterCondition> {}

extension CompanionQueryLinks
    on QueryBuilder<Companion, Companion, QFilterCondition> {
  QueryBuilder<Companion, Companion, QAfterFilterCondition> user(
    FilterQuery<User> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<Companion, Companion, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension CompanionQuerySortBy on QueryBuilder<Companion, Companion, QSortBy> {
  QueryBuilder<Companion, Companion, QAfterSortBy> sortByFeedMeter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedMeter', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByFeedMeterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedMeter', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByHatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hatId', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByHatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hatId', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByLastFed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFed', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByLastFedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFed', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CompanionQuerySortThenBy
    on QueryBuilder<Companion, Companion, QSortThenBy> {
  QueryBuilder<Companion, Companion, QAfterSortBy> thenByFeedMeter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedMeter', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByFeedMeterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedMeter', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByHatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hatId', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByHatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hatId', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByLastFed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFed', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByLastFedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastFed', Sort.desc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Companion, Companion, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CompanionQueryWhereDistinct
    on QueryBuilder<Companion, Companion, QDistinct> {
  QueryBuilder<Companion, Companion, QDistinct> distinctByFeedMeter() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feedMeter');
    });
  }

  QueryBuilder<Companion, Companion, QDistinct> distinctByHatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hatId');
    });
  }

  QueryBuilder<Companion, Companion, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<Companion, Companion, QDistinct> distinctByLastFed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastFed');
    });
  }

  QueryBuilder<Companion, Companion, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension CompanionQueryProperty
    on QueryBuilder<Companion, Companion, QQueryProperty> {
  QueryBuilder<Companion, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Companion, int, QQueryOperations> feedMeterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feedMeter');
    });
  }

  QueryBuilder<Companion, int, QQueryOperations> hatIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hatId');
    });
  }

  QueryBuilder<Companion, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<Companion, DateTime, QQueryOperations> lastFedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastFed');
    });
  }

  QueryBuilder<Companion, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
