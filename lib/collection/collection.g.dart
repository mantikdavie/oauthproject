// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlightRecordCollection on Isar {
  IsarCollection<FlightRecord> get flightRecords => this.collection();
}

const FlightRecordSchema = CollectionSchema(
  name: r'FlightRecord',
  id: -6859348356573700129,
  properties: {
    r'arrivalPort': PropertySchema(
      id: 0,
      name: r'arrivalPort',
      type: IsarType.string,
    ),
    r'crewMemberIds': PropertySchema(
      id: 1,
      name: r'crewMemberIds',
      type: IsarType.stringList,
    ),
    r'departurePort': PropertySchema(
      id: 2,
      name: r'departurePort',
      type: IsarType.string,
    ),
    r'flightDate': PropertySchema(
      id: 3,
      name: r'flightDate',
      type: IsarType.dateTime,
    ),
    r'flightNumber': PropertySchema(
      id: 4,
      name: r'flightNumber',
      type: IsarType.string,
    )
  },
  estimateSize: _flightRecordEstimateSize,
  serialize: _flightRecordSerialize,
  deserialize: _flightRecordDeserialize,
  deserializeProp: _flightRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'crewMemberIds': IndexSchema(
      id: 2251952186822815047,
      name: r'crewMemberIds',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'crewMemberIds',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _flightRecordGetId,
  getLinks: _flightRecordGetLinks,
  attach: _flightRecordAttach,
  version: '3.1.0+1',
);

int _flightRecordEstimateSize(
  FlightRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.arrivalPort;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.crewMemberIds;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.departurePort;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.flightNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flightRecordSerialize(
  FlightRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.arrivalPort);
  writer.writeStringList(offsets[1], object.crewMemberIds);
  writer.writeString(offsets[2], object.departurePort);
  writer.writeDateTime(offsets[3], object.flightDate);
  writer.writeString(offsets[4], object.flightNumber);
}

FlightRecord _flightRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlightRecord();
  object.arrivalPort = reader.readStringOrNull(offsets[0]);
  object.crewMemberIds = reader.readStringList(offsets[1]);
  object.departurePort = reader.readStringOrNull(offsets[2]);
  object.flightDate = reader.readDateTimeOrNull(offsets[3]);
  object.flightNumber = reader.readStringOrNull(offsets[4]);
  object.id = id;
  return object;
}

P _flightRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _flightRecordGetId(FlightRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flightRecordGetLinks(FlightRecord object) {
  return [];
}

void _flightRecordAttach(
    IsarCollection<dynamic> col, Id id, FlightRecord object) {
  object.id = id;
}

extension FlightRecordQueryWhereSort
    on QueryBuilder<FlightRecord, FlightRecord, QWhere> {
  QueryBuilder<FlightRecord, FlightRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhere>
      anyCrewMemberIdsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'crewMemberIds'),
      );
    });
  }
}

extension FlightRecordQueryWhere
    on QueryBuilder<FlightRecord, FlightRecord, QWhereClause> {
  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementEqualTo(String crewMemberIdsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'crewMemberIds',
        value: [crewMemberIdsElement],
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementNotEqualTo(String crewMemberIdsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'crewMemberIds',
              lower: [],
              upper: [crewMemberIdsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'crewMemberIds',
              lower: [crewMemberIdsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'crewMemberIds',
              lower: [crewMemberIdsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'crewMemberIds',
              lower: [],
              upper: [crewMemberIdsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementGreaterThan(
    String crewMemberIdsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'crewMemberIds',
        lower: [crewMemberIdsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementLessThan(
    String crewMemberIdsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'crewMemberIds',
        lower: [],
        upper: [crewMemberIdsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementBetween(
    String lowerCrewMemberIdsElement,
    String upperCrewMemberIdsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'crewMemberIds',
        lower: [lowerCrewMemberIdsElement],
        includeLower: includeLower,
        upper: [upperCrewMemberIdsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementStartsWith(String CrewMemberIdsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'crewMemberIds',
        lower: [CrewMemberIdsElementPrefix],
        upper: ['$CrewMemberIdsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'crewMemberIds',
        value: [''],
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterWhereClause>
      crewMemberIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'crewMemberIds',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'crewMemberIds',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'crewMemberIds',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'crewMemberIds',
              upper: [''],
            ));
      }
    });
  }
}

extension FlightRecordQueryFilter
    on QueryBuilder<FlightRecord, FlightRecord, QFilterCondition> {
  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrivalPort',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrivalPort',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arrivalPort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arrivalPort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrivalPort',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      arrivalPortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arrivalPort',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewMemberIds',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewMemberIds',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewMemberIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crewMemberIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crewMemberIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crewMemberIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crewMemberIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crewMemberIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewMemberIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewMemberIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewMemberIds',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewMemberIds',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crewMemberIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crewMemberIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crewMemberIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crewMemberIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crewMemberIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      crewMemberIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crewMemberIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'departurePort',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'departurePort',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'departurePort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'departurePort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departurePort',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      departurePortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'departurePort',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flightDate',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flightDate',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flightDate',
        value: value,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flightDate',
        value: value,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flightDate',
        value: value,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flightDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flightNumber',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flightNumber',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flightNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flightNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flightNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition>
      flightNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flightNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlightRecordQueryObject
    on QueryBuilder<FlightRecord, FlightRecord, QFilterCondition> {}

extension FlightRecordQueryLinks
    on QueryBuilder<FlightRecord, FlightRecord, QFilterCondition> {}

extension FlightRecordQuerySortBy
    on QueryBuilder<FlightRecord, FlightRecord, QSortBy> {
  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> sortByArrivalPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      sortByArrivalPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> sortByDeparturePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      sortByDeparturePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> sortByFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      sortByFlightDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> sortByFlightNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      sortByFlightNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.desc);
    });
  }
}

extension FlightRecordQuerySortThenBy
    on QueryBuilder<FlightRecord, FlightRecord, QSortThenBy> {
  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> thenByArrivalPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      thenByArrivalPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> thenByDeparturePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      thenByDeparturePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> thenByFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      thenByFlightDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> thenByFlightNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy>
      thenByFlightNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.desc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FlightRecordQueryWhereDistinct
    on QueryBuilder<FlightRecord, FlightRecord, QDistinct> {
  QueryBuilder<FlightRecord, FlightRecord, QDistinct> distinctByArrivalPort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrivalPort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QDistinct>
      distinctByCrewMemberIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crewMemberIds');
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QDistinct> distinctByDeparturePort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'departurePort',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QDistinct> distinctByFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flightDate');
    });
  }

  QueryBuilder<FlightRecord, FlightRecord, QDistinct> distinctByFlightNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flightNumber', caseSensitive: caseSensitive);
    });
  }
}

extension FlightRecordQueryProperty
    on QueryBuilder<FlightRecord, FlightRecord, QQueryProperty> {
  QueryBuilder<FlightRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlightRecord, String?, QQueryOperations> arrivalPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrivalPort');
    });
  }

  QueryBuilder<FlightRecord, List<String>?, QQueryOperations>
      crewMemberIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crewMemberIds');
    });
  }

  QueryBuilder<FlightRecord, String?, QQueryOperations>
      departurePortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'departurePort');
    });
  }

  QueryBuilder<FlightRecord, DateTime?, QQueryOperations> flightDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flightDate');
    });
  }

  QueryBuilder<FlightRecord, String?, QQueryOperations> flightNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flightNumber');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCrewMemberCollection on Isar {
  IsarCollection<CrewMember> get crewMembers => this.collection();
}

const CrewMemberSchema = CollectionSchema(
  name: r'CrewMember',
  id: -8628424137867684880,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'position': PropertySchema(
      id: 1,
      name: r'position',
      type: IsarType.string,
    )
  },
  estimateSize: _crewMemberEstimateSize,
  serialize: _crewMemberSerialize,
  deserialize: _crewMemberDeserialize,
  deserializeProp: _crewMemberDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _crewMemberGetId,
  getLinks: _crewMemberGetLinks,
  attach: _crewMemberAttach,
  version: '3.1.0+1',
);

int _crewMemberEstimateSize(
  CrewMember object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.position;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _crewMemberSerialize(
  CrewMember object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.position);
}

CrewMember _crewMemberDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CrewMember();
  object.id = id;
  object.name = reader.readStringOrNull(offsets[0]);
  object.position = reader.readStringOrNull(offsets[1]);
  return object;
}

P _crewMemberDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _crewMemberGetId(CrewMember object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _crewMemberGetLinks(CrewMember object) {
  return [];
}

void _crewMemberAttach(IsarCollection<dynamic> col, Id id, CrewMember object) {
  object.id = id;
}

extension CrewMemberQueryWhereSort
    on QueryBuilder<CrewMember, CrewMember, QWhere> {
  QueryBuilder<CrewMember, CrewMember, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CrewMemberQueryWhere
    on QueryBuilder<CrewMember, CrewMember, QWhereClause> {
  QueryBuilder<CrewMember, CrewMember, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CrewMember, CrewMember, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CrewMemberQueryFilter
    on QueryBuilder<CrewMember, CrewMember, QFilterCondition> {
  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'position',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition>
      positionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'position',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition>
      positionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'position',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition>
      positionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition> positionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'position',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition>
      positionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterFilterCondition>
      positionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'position',
        value: '',
      ));
    });
  }
}

extension CrewMemberQueryObject
    on QueryBuilder<CrewMember, CrewMember, QFilterCondition> {}

extension CrewMemberQueryLinks
    on QueryBuilder<CrewMember, CrewMember, QFilterCondition> {}

extension CrewMemberQuerySortBy
    on QueryBuilder<CrewMember, CrewMember, QSortBy> {
  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> sortByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> sortByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }
}

extension CrewMemberQuerySortThenBy
    on QueryBuilder<CrewMember, CrewMember, QSortThenBy> {
  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> thenByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QAfterSortBy> thenByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }
}

extension CrewMemberQueryWhereDistinct
    on QueryBuilder<CrewMember, CrewMember, QDistinct> {
  QueryBuilder<CrewMember, CrewMember, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrewMember, CrewMember, QDistinct> distinctByPosition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'position', caseSensitive: caseSensitive);
    });
  }
}

extension CrewMemberQueryProperty
    on QueryBuilder<CrewMember, CrewMember, QQueryProperty> {
  QueryBuilder<CrewMember, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CrewMember, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CrewMember, String?, QQueryOperations> positionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'position');
    });
  }
}
