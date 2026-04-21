// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_hat.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserHatCollection on Isar {
  IsarCollection<UserHat> get userHats => this.collection();
}

const UserHatSchema = CollectionSchema(
  name: r'UserHat',
  id: -2159704600821643448,
  properties: {
    r'isSynced': PropertySchema(id: 0, name: r'isSynced', type: IsarType.bool),
  },

  estimateSize: _userHatEstimateSize,
  serialize: _userHatSerialize,
  deserialize: _userHatDeserialize,
  deserializeProp: _userHatDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'user': LinkSchema(
      id: 3150743337344418358,
      name: r'user',
      target: r'User',
      single: true,
    ),
    r'hat': LinkSchema(
      id: 3154614912128256335,
      name: r'hat',
      target: r'Hat',
      single: true,
    ),
  },
  embeddedSchemas: {},

  getId: _userHatGetId,
  getLinks: _userHatGetLinks,
  attach: _userHatAttach,
  version: '3.3.2',
);

int _userHatEstimateSize(
  UserHat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _userHatSerialize(
  UserHat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isSynced);
}

UserHat _userHatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserHat();
  object.id = id;
  object.isSynced = reader.readBool(offsets[0]);
  return object;
}

P _userHatDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userHatGetId(UserHat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userHatGetLinks(UserHat object) {
  return [object.user, object.hat];
}

void _userHatAttach(IsarCollection<dynamic> col, Id id, UserHat object) {
  object.id = id;
  object.user.attach(col, col.isar.collection<User>(), r'user', id);
  object.hat.attach(col, col.isar.collection<Hat>(), r'hat', id);
}

extension UserHatQueryWhereSort on QueryBuilder<UserHat, UserHat, QWhere> {
  QueryBuilder<UserHat, UserHat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserHatQueryWhere on QueryBuilder<UserHat, UserHat, QWhereClause> {
  QueryBuilder<UserHat, UserHat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<UserHat, UserHat, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterWhereClause> idBetween(
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

extension UserHatQueryFilter
    on QueryBuilder<UserHat, UserHat, QFilterCondition> {
  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> isSyncedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isSynced', value: value),
      );
    });
  }
}

extension UserHatQueryObject
    on QueryBuilder<UserHat, UserHat, QFilterCondition> {}

extension UserHatQueryLinks
    on QueryBuilder<UserHat, UserHat, QFilterCondition> {
  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> user(
    FilterQuery<User> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> hat(
    FilterQuery<Hat> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'hat');
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterFilterCondition> hatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'hat', 0, true, 0, true);
    });
  }
}

extension UserHatQuerySortBy on QueryBuilder<UserHat, UserHat, QSortBy> {
  QueryBuilder<UserHat, UserHat, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }
}

extension UserHatQuerySortThenBy
    on QueryBuilder<UserHat, UserHat, QSortThenBy> {
  QueryBuilder<UserHat, UserHat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<UserHat, UserHat, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }
}

extension UserHatQueryWhereDistinct
    on QueryBuilder<UserHat, UserHat, QDistinct> {
  QueryBuilder<UserHat, UserHat, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }
}

extension UserHatQueryProperty
    on QueryBuilder<UserHat, UserHat, QQueryProperty> {
  QueryBuilder<UserHat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserHat, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }
}
