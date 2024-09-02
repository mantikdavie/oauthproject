// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_list_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCrewListRecordCollection on Isar {
  IsarCollection<CrewListRecord> get crewListRecords => this.collection();
}

const CrewListRecordSchema = CollectionSchema(
  name: r'CrewListRecord',
  id: 6322377843341834579,
  properties: {
    r'aircraftType': PropertySchema(
      id: 0,
      name: r'aircraftType',
      type: IsarType.string,
    ),
    r'arrivalPort': PropertySchema(
      id: 1,
      name: r'arrivalPort',
      type: IsarType.string,
    ),
    r'cabinCrews': PropertySchema(
      id: 2,
      name: r'cabinCrews',
      type: IsarType.objectList,
      target: r'CabinCrew',
    ),
    r'departurePort': PropertySchema(
      id: 3,
      name: r'departurePort',
      type: IsarType.string,
    ),
    r'dutyRecordId': PropertySchema(
      id: 4,
      name: r'dutyRecordId',
      type: IsarType.long,
    ),
    r'flightDate': PropertySchema(
      id: 5,
      name: r'flightDate',
      type: IsarType.dateTime,
    ),
    r'flightNumber': PropertySchema(
      id: 6,
      name: r'flightNumber',
      type: IsarType.string,
    ),
    r'pilots': PropertySchema(
      id: 7,
      name: r'pilots',
      type: IsarType.objectList,
      target: r'Pilot',
    )
  },
  estimateSize: _crewListRecordEstimateSize,
  serialize: _crewListRecordSerialize,
  deserialize: _crewListRecordDeserialize,
  deserializeProp: _crewListRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'dutyRecordId': IndexSchema(
      id: 4230248092622069486,
      name: r'dutyRecordId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dutyRecordId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'flightNumber': IndexSchema(
      id: 3480387966818097418,
      name: r'flightNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'flightNumber',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'flightDate': IndexSchema(
      id: -6653569001387128696,
      name: r'flightDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'flightDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'Pilot': PilotSchema, r'CabinCrew': CabinCrewSchema},
  getId: _crewListRecordGetId,
  getLinks: _crewListRecordGetLinks,
  attach: _crewListRecordAttach,
  version: '3.1.0+1',
);

int _crewListRecordEstimateSize(
  CrewListRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.aircraftType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.arrivalPort;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.cabinCrews;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CabinCrew]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              CabinCrewSchema.estimateSize(value, offsets, allOffsets);
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
  {
    final list = object.pilots;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Pilot]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += PilotSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _crewListRecordSerialize(
  CrewListRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aircraftType);
  writer.writeString(offsets[1], object.arrivalPort);
  writer.writeObjectList<CabinCrew>(
    offsets[2],
    allOffsets,
    CabinCrewSchema.serialize,
    object.cabinCrews,
  );
  writer.writeString(offsets[3], object.departurePort);
  writer.writeLong(offsets[4], object.dutyRecordId);
  writer.writeDateTime(offsets[5], object.flightDate);
  writer.writeString(offsets[6], object.flightNumber);
  writer.writeObjectList<Pilot>(
    offsets[7],
    allOffsets,
    PilotSchema.serialize,
    object.pilots,
  );
}

CrewListRecord _crewListRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CrewListRecord();
  object.aircraftType = reader.readStringOrNull(offsets[0]);
  object.arrivalPort = reader.readStringOrNull(offsets[1]);
  object.cabinCrews = reader.readObjectList<CabinCrew>(
    offsets[2],
    CabinCrewSchema.deserialize,
    allOffsets,
    CabinCrew(),
  );
  object.departurePort = reader.readStringOrNull(offsets[3]);
  object.dutyRecordId = reader.readLongOrNull(offsets[4]);
  object.flightDate = reader.readDateTimeOrNull(offsets[5]);
  object.flightNumber = reader.readStringOrNull(offsets[6]);
  object.id = id;
  object.pilots = reader.readObjectList<Pilot>(
    offsets[7],
    PilotSchema.deserialize,
    allOffsets,
    Pilot(),
  );
  return object;
}

P _crewListRecordDeserializeProp<P>(
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
    case 2:
      return (reader.readObjectList<CabinCrew>(
        offset,
        CabinCrewSchema.deserialize,
        allOffsets,
        CabinCrew(),
      )) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readObjectList<Pilot>(
        offset,
        PilotSchema.deserialize,
        allOffsets,
        Pilot(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _crewListRecordGetId(CrewListRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _crewListRecordGetLinks(CrewListRecord object) {
  return [];
}

void _crewListRecordAttach(
    IsarCollection<dynamic> col, Id id, CrewListRecord object) {
  object.id = id;
}

extension CrewListRecordByIndex on IsarCollection<CrewListRecord> {
  Future<CrewListRecord?> getByDutyRecordId(int? dutyRecordId) {
    return getByIndex(r'dutyRecordId', [dutyRecordId]);
  }

  CrewListRecord? getByDutyRecordIdSync(int? dutyRecordId) {
    return getByIndexSync(r'dutyRecordId', [dutyRecordId]);
  }

  Future<bool> deleteByDutyRecordId(int? dutyRecordId) {
    return deleteByIndex(r'dutyRecordId', [dutyRecordId]);
  }

  bool deleteByDutyRecordIdSync(int? dutyRecordId) {
    return deleteByIndexSync(r'dutyRecordId', [dutyRecordId]);
  }

  Future<List<CrewListRecord?>> getAllByDutyRecordId(
      List<int?> dutyRecordIdValues) {
    final values = dutyRecordIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'dutyRecordId', values);
  }

  List<CrewListRecord?> getAllByDutyRecordIdSync(
      List<int?> dutyRecordIdValues) {
    final values = dutyRecordIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'dutyRecordId', values);
  }

  Future<int> deleteAllByDutyRecordId(List<int?> dutyRecordIdValues) {
    final values = dutyRecordIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'dutyRecordId', values);
  }

  int deleteAllByDutyRecordIdSync(List<int?> dutyRecordIdValues) {
    final values = dutyRecordIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'dutyRecordId', values);
  }

  Future<Id> putByDutyRecordId(CrewListRecord object) {
    return putByIndex(r'dutyRecordId', object);
  }

  Id putByDutyRecordIdSync(CrewListRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'dutyRecordId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDutyRecordId(List<CrewListRecord> objects) {
    return putAllByIndex(r'dutyRecordId', objects);
  }

  List<Id> putAllByDutyRecordIdSync(List<CrewListRecord> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'dutyRecordId', objects, saveLinks: saveLinks);
  }
}

extension CrewListRecordQueryWhereSort
    on QueryBuilder<CrewListRecord, CrewListRecord, QWhere> {
  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhere> anyDutyRecordId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dutyRecordId'),
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhere> anyFlightNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'flightNumber'),
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhere> anyFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'flightDate'),
      );
    });
  }
}

extension CrewListRecordQueryWhere
    on QueryBuilder<CrewListRecord, CrewListRecord, QWhereClause> {
  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause> idBetween(
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dutyRecordId',
        value: [null],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyRecordId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdEqualTo(int? dutyRecordId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dutyRecordId',
        value: [dutyRecordId],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdNotEqualTo(int? dutyRecordId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyRecordId',
              lower: [],
              upper: [dutyRecordId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyRecordId',
              lower: [dutyRecordId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyRecordId',
              lower: [dutyRecordId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyRecordId',
              lower: [],
              upper: [dutyRecordId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdGreaterThan(
    int? dutyRecordId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyRecordId',
        lower: [dutyRecordId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdLessThan(
    int? dutyRecordId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyRecordId',
        lower: [],
        upper: [dutyRecordId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      dutyRecordIdBetween(
    int? lowerDutyRecordId,
    int? upperDutyRecordId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyRecordId',
        lower: [lowerDutyRecordId],
        includeLower: includeLower,
        upper: [upperDutyRecordId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'flightNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberEqualTo(String? flightNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'flightNumber',
        value: [flightNumber],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberNotEqualTo(String? flightNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightNumber',
              lower: [],
              upper: [flightNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightNumber',
              lower: [flightNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightNumber',
              lower: [flightNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightNumber',
              lower: [],
              upper: [flightNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberGreaterThan(
    String? flightNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightNumber',
        lower: [flightNumber],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberLessThan(
    String? flightNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightNumber',
        lower: [],
        upper: [flightNumber],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberBetween(
    String? lowerFlightNumber,
    String? upperFlightNumber, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightNumber',
        lower: [lowerFlightNumber],
        includeLower: includeLower,
        upper: [upperFlightNumber],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberStartsWith(String FlightNumberPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightNumber',
        lower: [FlightNumberPrefix],
        upper: ['$FlightNumberPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'flightNumber',
        value: [''],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'flightNumber',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'flightNumber',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'flightNumber',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'flightNumber',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'flightDate',
        value: [null],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightDate',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateEqualTo(DateTime? flightDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'flightDate',
        value: [flightDate],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateNotEqualTo(DateTime? flightDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightDate',
              lower: [],
              upper: [flightDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightDate',
              lower: [flightDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightDate',
              lower: [flightDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'flightDate',
              lower: [],
              upper: [flightDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateGreaterThan(
    DateTime? flightDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightDate',
        lower: [flightDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateLessThan(
    DateTime? flightDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightDate',
        lower: [],
        upper: [flightDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterWhereClause>
      flightDateBetween(
    DateTime? lowerFlightDate,
    DateTime? upperFlightDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'flightDate',
        lower: [lowerFlightDate],
        includeLower: includeLower,
        upper: [upperFlightDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CrewListRecordQueryFilter
    on QueryBuilder<CrewListRecord, CrewListRecord, QFilterCondition> {
  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aircraftType',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aircraftType',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aircraftType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aircraftType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aircraftType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aircraftType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aircraftType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aircraftType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aircraftType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftType',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      aircraftTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aircraftType',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      arrivalPortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrivalPort',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      arrivalPortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrivalPort',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      arrivalPortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arrivalPort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      arrivalPortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arrivalPort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      arrivalPortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrivalPort',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      arrivalPortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arrivalPort',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cabinCrews',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cabinCrews',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cabinCrews',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cabinCrews',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cabinCrews',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cabinCrews',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cabinCrews',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cabinCrews',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      departurePortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'departurePort',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      departurePortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'departurePort',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      departurePortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'departurePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      departurePortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'departurePort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      departurePortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departurePort',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      departurePortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'departurePort',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      dutyRecordIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyRecordId',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      dutyRecordIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyRecordId',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      dutyRecordIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyRecordId',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      dutyRecordIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyRecordId',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      dutyRecordIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyRecordId',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      dutyRecordIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyRecordId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flightDate',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flightDate',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flightDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flightNumber',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flightNumber',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flightNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flightNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flightNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      flightNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flightNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pilots',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pilots',
      ));
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pilots',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pilots',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pilots',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pilots',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pilots',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pilots',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension CrewListRecordQueryObject
    on QueryBuilder<CrewListRecord, CrewListRecord, QFilterCondition> {
  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      cabinCrewsElement(FilterQuery<CabinCrew> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cabinCrews');
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterFilterCondition>
      pilotsElement(FilterQuery<Pilot> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pilots');
    });
  }
}

extension CrewListRecordQueryLinks
    on QueryBuilder<CrewListRecord, CrewListRecord, QFilterCondition> {}

extension CrewListRecordQuerySortBy
    on QueryBuilder<CrewListRecord, CrewListRecord, QSortBy> {
  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByAircraftType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftType', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByAircraftTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftType', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByArrivalPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByArrivalPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByDeparturePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByDeparturePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByDutyRecordId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyRecordId', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByDutyRecordIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyRecordId', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByFlightDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByFlightNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      sortByFlightNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.desc);
    });
  }
}

extension CrewListRecordQuerySortThenBy
    on QueryBuilder<CrewListRecord, CrewListRecord, QSortThenBy> {
  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByAircraftType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftType', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByAircraftTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftType', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByArrivalPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByArrivalPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrivalPort', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByDeparturePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByDeparturePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departurePort', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByDutyRecordId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyRecordId', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByDutyRecordIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyRecordId', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByFlightDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightDate', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByFlightNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy>
      thenByFlightNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flightNumber', Sort.desc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CrewListRecordQueryWhereDistinct
    on QueryBuilder<CrewListRecord, CrewListRecord, QDistinct> {
  QueryBuilder<CrewListRecord, CrewListRecord, QDistinct>
      distinctByAircraftType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aircraftType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QDistinct> distinctByArrivalPort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrivalPort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QDistinct>
      distinctByDeparturePort({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'departurePort',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QDistinct>
      distinctByDutyRecordId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyRecordId');
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QDistinct>
      distinctByFlightDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flightDate');
    });
  }

  QueryBuilder<CrewListRecord, CrewListRecord, QDistinct>
      distinctByFlightNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flightNumber', caseSensitive: caseSensitive);
    });
  }
}

extension CrewListRecordQueryProperty
    on QueryBuilder<CrewListRecord, CrewListRecord, QQueryProperty> {
  QueryBuilder<CrewListRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CrewListRecord, String?, QQueryOperations>
      aircraftTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aircraftType');
    });
  }

  QueryBuilder<CrewListRecord, String?, QQueryOperations>
      arrivalPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrivalPort');
    });
  }

  QueryBuilder<CrewListRecord, List<CabinCrew>?, QQueryOperations>
      cabinCrewsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cabinCrews');
    });
  }

  QueryBuilder<CrewListRecord, String?, QQueryOperations>
      departurePortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'departurePort');
    });
  }

  QueryBuilder<CrewListRecord, int?, QQueryOperations> dutyRecordIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyRecordId');
    });
  }

  QueryBuilder<CrewListRecord, DateTime?, QQueryOperations>
      flightDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flightDate');
    });
  }

  QueryBuilder<CrewListRecord, String?, QQueryOperations>
      flightNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flightNumber');
    });
  }

  QueryBuilder<CrewListRecord, List<Pilot>?, QQueryOperations>
      pilotsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pilots');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PilotSchema = Schema(
  name: r'Pilot',
  id: -1787240181849475520,
  properties: {
    r'aircraftTypeQualificationCode': PropertySchema(
      id: 0,
      name: r'aircraftTypeQualificationCode',
      type: IsarType.string,
    ),
    r'badgeName': PropertySchema(
      id: 1,
      name: r'badgeName',
      type: IsarType.string,
    ),
    r'basePort': PropertySchema(
      id: 2,
      name: r'basePort',
      type: IsarType.string,
    ),
    r'commander': PropertySchema(
      id: 3,
      name: r'commander',
      type: IsarType.string,
    ),
    r'company': PropertySchema(
      id: 4,
      name: r'company',
      type: IsarType.string,
    ),
    r'crewCategory': PropertySchema(
      id: 5,
      name: r'crewCategory',
      type: IsarType.string,
    ),
    r'crewCategorySeniority': PropertySchema(
      id: 6,
      name: r'crewCategorySeniority',
      type: IsarType.string,
    ),
    r'galacxyId': PropertySchema(
      id: 7,
      name: r'galacxyId',
      type: IsarType.string,
    ),
    r'qualificationSeniority': PropertySchema(
      id: 8,
      name: r'qualificationSeniority',
      type: IsarType.string,
    ),
    r'reliefQualified': PropertySchema(
      id: 9,
      name: r'reliefQualified',
      type: IsarType.stringList,
    ),
    r'rosterName': PropertySchema(
      id: 10,
      name: r'rosterName',
      type: IsarType.string,
    ),
    r'specialDutyCode': PropertySchema(
      id: 11,
      name: r'specialDutyCode',
      type: IsarType.string,
    ),
    r'specialDutyCodeDescription': PropertySchema(
      id: 12,
      name: r'specialDutyCodeDescription',
      type: IsarType.string,
    ),
    r'surname': PropertySchema(
      id: 13,
      name: r'surname',
      type: IsarType.string,
    )
  },
  estimateSize: _pilotEstimateSize,
  serialize: _pilotSerialize,
  deserialize: _pilotDeserialize,
  deserializeProp: _pilotDeserializeProp,
);

int _pilotEstimateSize(
  Pilot object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.aircraftTypeQualificationCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.badgeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.basePort;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.commander;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.company;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crewCategory;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crewCategorySeniority;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.galacxyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.qualificationSeniority;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.reliefQualified;
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
    final value = object.rosterName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.specialDutyCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.specialDutyCodeDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _pilotSerialize(
  Pilot object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aircraftTypeQualificationCode);
  writer.writeString(offsets[1], object.badgeName);
  writer.writeString(offsets[2], object.basePort);
  writer.writeString(offsets[3], object.commander);
  writer.writeString(offsets[4], object.company);
  writer.writeString(offsets[5], object.crewCategory);
  writer.writeString(offsets[6], object.crewCategorySeniority);
  writer.writeString(offsets[7], object.galacxyId);
  writer.writeString(offsets[8], object.qualificationSeniority);
  writer.writeStringList(offsets[9], object.reliefQualified);
  writer.writeString(offsets[10], object.rosterName);
  writer.writeString(offsets[11], object.specialDutyCode);
  writer.writeString(offsets[12], object.specialDutyCodeDescription);
  writer.writeString(offsets[13], object.surname);
}

Pilot _pilotDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Pilot();
  object.aircraftTypeQualificationCode = reader.readStringOrNull(offsets[0]);
  object.badgeName = reader.readStringOrNull(offsets[1]);
  object.basePort = reader.readStringOrNull(offsets[2]);
  object.commander = reader.readStringOrNull(offsets[3]);
  object.company = reader.readStringOrNull(offsets[4]);
  object.crewCategory = reader.readStringOrNull(offsets[5]);
  object.crewCategorySeniority = reader.readStringOrNull(offsets[6]);
  object.galacxyId = reader.readStringOrNull(offsets[7]);
  object.qualificationSeniority = reader.readStringOrNull(offsets[8]);
  object.reliefQualified = reader.readStringList(offsets[9]);
  object.rosterName = reader.readStringOrNull(offsets[10]);
  object.specialDutyCode = reader.readStringOrNull(offsets[11]);
  object.specialDutyCodeDescription = reader.readStringOrNull(offsets[12]);
  object.surname = reader.readStringOrNull(offsets[13]);
  return object;
}

P _pilotDeserializeProp<P>(
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
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringList(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PilotQueryFilter on QueryBuilder<Pilot, Pilot, QFilterCondition> {
  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aircraftTypeQualificationCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aircraftTypeQualificationCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'badgeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> badgeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'basePort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'basePort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> basePortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commander',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commander',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commander',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'commander',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commander',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> commanderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'commander',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crewCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> crewCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crewCategorySeniority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewCategorySeniority',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      crewCategorySeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'galacxyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'galacxyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> galacxyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qualificationSeniority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qualificationSeniority',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      qualificationSeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> reliefQualifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reliefQualified',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> reliefQualifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reliefQualified',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reliefQualified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reliefQualified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reliefQualified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reliefQualified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reliefQualified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reliefQualified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reliefQualified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reliefQualified',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reliefQualified',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reliefQualified',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reliefQualified',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> reliefQualifiedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reliefQualified',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reliefQualified',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reliefQualified',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reliefQualified',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      reliefQualifiedLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reliefQualified',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rosterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rosterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> rosterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialDutyCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> specialDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialDutyCodeDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialDutyCodeDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surname',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surname',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surname',
        value: '',
      ));
    });
  }

  QueryBuilder<Pilot, Pilot, QAfterFilterCondition> surnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surname',
        value: '',
      ));
    });
  }
}

extension PilotQueryObject on QueryBuilder<Pilot, Pilot, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CabinCrewSchema = Schema(
  name: r'CabinCrew',
  id: -931288938618803327,
  properties: {
    r'aircraftTypeQualificationCode': PropertySchema(
      id: 0,
      name: r'aircraftTypeQualificationCode',
      type: IsarType.string,
    ),
    r'badgeName': PropertySchema(
      id: 1,
      name: r'badgeName',
      type: IsarType.string,
    ),
    r'basePort': PropertySchema(
      id: 2,
      name: r'basePort',
      type: IsarType.string,
    ),
    r'company': PropertySchema(
      id: 3,
      name: r'company',
      type: IsarType.string,
    ),
    r'crewCategory': PropertySchema(
      id: 4,
      name: r'crewCategory',
      type: IsarType.string,
    ),
    r'crewCategorySeniority': PropertySchema(
      id: 5,
      name: r'crewCategorySeniority',
      type: IsarType.string,
    ),
    r'fleetCode': PropertySchema(
      id: 6,
      name: r'fleetCode',
      type: IsarType.string,
    ),
    r'galacxyId': PropertySchema(
      id: 7,
      name: r'galacxyId',
      type: IsarType.string,
    ),
    r'languageCode': PropertySchema(
      id: 8,
      name: r'languageCode',
      type: IsarType.string,
    ),
    r'qualificationSeniority': PropertySchema(
      id: 9,
      name: r'qualificationSeniority',
      type: IsarType.string,
    ),
    r'rosterName': PropertySchema(
      id: 10,
      name: r'rosterName',
      type: IsarType.string,
    ),
    r'specialDutyCode': PropertySchema(
      id: 11,
      name: r'specialDutyCode',
      type: IsarType.string,
    ),
    r'specialDutyCodeDescription': PropertySchema(
      id: 12,
      name: r'specialDutyCodeDescription',
      type: IsarType.string,
    )
  },
  estimateSize: _cabinCrewEstimateSize,
  serialize: _cabinCrewSerialize,
  deserialize: _cabinCrewDeserialize,
  deserializeProp: _cabinCrewDeserializeProp,
);

int _cabinCrewEstimateSize(
  CabinCrew object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.aircraftTypeQualificationCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.badgeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.basePort;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.company;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crewCategory;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crewCategorySeniority;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fleetCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.galacxyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.languageCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.qualificationSeniority;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rosterName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.specialDutyCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.specialDutyCodeDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cabinCrewSerialize(
  CabinCrew object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aircraftTypeQualificationCode);
  writer.writeString(offsets[1], object.badgeName);
  writer.writeString(offsets[2], object.basePort);
  writer.writeString(offsets[3], object.company);
  writer.writeString(offsets[4], object.crewCategory);
  writer.writeString(offsets[5], object.crewCategorySeniority);
  writer.writeString(offsets[6], object.fleetCode);
  writer.writeString(offsets[7], object.galacxyId);
  writer.writeString(offsets[8], object.languageCode);
  writer.writeString(offsets[9], object.qualificationSeniority);
  writer.writeString(offsets[10], object.rosterName);
  writer.writeString(offsets[11], object.specialDutyCode);
  writer.writeString(offsets[12], object.specialDutyCodeDescription);
}

CabinCrew _cabinCrewDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CabinCrew();
  object.aircraftTypeQualificationCode = reader.readStringOrNull(offsets[0]);
  object.badgeName = reader.readStringOrNull(offsets[1]);
  object.basePort = reader.readStringOrNull(offsets[2]);
  object.company = reader.readStringOrNull(offsets[3]);
  object.crewCategory = reader.readStringOrNull(offsets[4]);
  object.crewCategorySeniority = reader.readStringOrNull(offsets[5]);
  object.fleetCode = reader.readStringOrNull(offsets[6]);
  object.galacxyId = reader.readStringOrNull(offsets[7]);
  object.languageCode = reader.readStringOrNull(offsets[8]);
  object.qualificationSeniority = reader.readStringOrNull(offsets[9]);
  object.rosterName = reader.readStringOrNull(offsets[10]);
  object.specialDutyCode = reader.readStringOrNull(offsets[11]);
  object.specialDutyCodeDescription = reader.readStringOrNull(offsets[12]);
  return object;
}

P _cabinCrewDeserializeProp<P>(
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
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CabinCrewQueryFilter
    on QueryBuilder<CabinCrew, CabinCrew, QFilterCondition> {
  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aircraftTypeQualificationCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aircraftTypeQualificationCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aircraftTypeQualificationCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      badgeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      badgeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'badgeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> badgeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      badgeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      basePortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'basePort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'basePort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> basePortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      basePortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> crewCategoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> crewCategoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crewCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> crewCategoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crewCategorySeniority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewCategorySeniority',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      crewCategorySeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fleetCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      fleetCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fleetCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      fleetCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fleetCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fleetCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> fleetCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fleetCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      fleetCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fleetCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      galacxyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      galacxyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'galacxyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'galacxyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> galacxyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      galacxyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languageCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languageCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> languageCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> languageCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languageCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> languageCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languageCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      languageCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qualificationSeniority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qualificationSeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qualificationSeniority',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      qualificationSeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      rosterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      rosterNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rosterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      rosterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition> rosterNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rosterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      rosterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      rosterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialDutyCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialDutyCodeDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialDutyCodeDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialDutyCodeDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrew, CabinCrew, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }
}

extension CabinCrewQueryObject
    on QueryBuilder<CabinCrew, CabinCrew, QFilterCondition> {}
