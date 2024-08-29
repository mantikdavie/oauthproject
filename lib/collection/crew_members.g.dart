// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_members.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPilotProfileCollection on Isar {
  IsarCollection<PilotProfile> get pilotProfiles => this.collection();
}

const PilotProfileSchema = CollectionSchema(
  name: r'PilotProfile',
  id: 4432246750728788320,
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
    r'companyEmail': PropertySchema(
      id: 5,
      name: r'companyEmail',
      type: IsarType.string,
    ),
    r'crewCategory': PropertySchema(
      id: 6,
      name: r'crewCategory',
      type: IsarType.string,
    ),
    r'crewCategorySeniority': PropertySchema(
      id: 7,
      name: r'crewCategorySeniority',
      type: IsarType.string,
    ),
    r'currentErn': PropertySchema(
      id: 8,
      name: r'currentErn',
      type: IsarType.string,
    ),
    r'dutyRecords': PropertySchema(
      id: 9,
      name: r'dutyRecords',
      type: IsarType.longList,
    ),
    r'galacxyId': PropertySchema(
      id: 10,
      name: r'galacxyId',
      type: IsarType.string,
    ),
    r'primaryPhone': PropertySchema(
      id: 11,
      name: r'primaryPhone',
      type: IsarType.string,
    ),
    r'qualificationSeniority': PropertySchema(
      id: 12,
      name: r'qualificationSeniority',
      type: IsarType.string,
    ),
    r'reliefQualified': PropertySchema(
      id: 13,
      name: r'reliefQualified',
      type: IsarType.stringList,
    ),
    r'rosterName': PropertySchema(
      id: 14,
      name: r'rosterName',
      type: IsarType.string,
    ),
    r'specialDutyCode': PropertySchema(
      id: 15,
      name: r'specialDutyCode',
      type: IsarType.string,
    ),
    r'specialDutyCodeDescription': PropertySchema(
      id: 16,
      name: r'specialDutyCodeDescription',
      type: IsarType.string,
    ),
    r'surname': PropertySchema(
      id: 17,
      name: r'surname',
      type: IsarType.string,
    )
  },
  estimateSize: _pilotProfileEstimateSize,
  serialize: _pilotProfileSerialize,
  deserialize: _pilotProfileDeserialize,
  deserializeProp: _pilotProfileDeserializeProp,
  idName: r'id',
  indexes: {
    r'rosterName': IndexSchema(
      id: 5108714675700069683,
      name: r'rosterName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'rosterName',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'galacxyId': IndexSchema(
      id: 7653308927333972035,
      name: r'galacxyId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'galacxyId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _pilotProfileGetId,
  getLinks: _pilotProfileGetLinks,
  attach: _pilotProfileAttach,
  version: '3.1.0+1',
);

int _pilotProfileEstimateSize(
  PilotProfile object,
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
    final value = object.companyEmail;
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
    final value = object.currentErn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dutyRecords;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.galacxyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryPhone;
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

void _pilotProfileSerialize(
  PilotProfile object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aircraftTypeQualificationCode);
  writer.writeString(offsets[1], object.badgeName);
  writer.writeString(offsets[2], object.basePort);
  writer.writeString(offsets[3], object.commander);
  writer.writeString(offsets[4], object.company);
  writer.writeString(offsets[5], object.companyEmail);
  writer.writeString(offsets[6], object.crewCategory);
  writer.writeString(offsets[7], object.crewCategorySeniority);
  writer.writeString(offsets[8], object.currentErn);
  writer.writeLongList(offsets[9], object.dutyRecords);
  writer.writeString(offsets[10], object.galacxyId);
  writer.writeString(offsets[11], object.primaryPhone);
  writer.writeString(offsets[12], object.qualificationSeniority);
  writer.writeStringList(offsets[13], object.reliefQualified);
  writer.writeString(offsets[14], object.rosterName);
  writer.writeString(offsets[15], object.specialDutyCode);
  writer.writeString(offsets[16], object.specialDutyCodeDescription);
  writer.writeString(offsets[17], object.surname);
}

PilotProfile _pilotProfileDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PilotProfile();
  object.aircraftTypeQualificationCode = reader.readStringOrNull(offsets[0]);
  object.badgeName = reader.readStringOrNull(offsets[1]);
  object.basePort = reader.readStringOrNull(offsets[2]);
  object.commander = reader.readStringOrNull(offsets[3]);
  object.company = reader.readStringOrNull(offsets[4]);
  object.companyEmail = reader.readStringOrNull(offsets[5]);
  object.crewCategory = reader.readStringOrNull(offsets[6]);
  object.crewCategorySeniority = reader.readStringOrNull(offsets[7]);
  object.currentErn = reader.readStringOrNull(offsets[8]);
  object.dutyRecords = reader.readLongList(offsets[9]);
  object.galacxyId = reader.readStringOrNull(offsets[10]);
  object.id = id;
  object.primaryPhone = reader.readStringOrNull(offsets[11]);
  object.qualificationSeniority = reader.readStringOrNull(offsets[12]);
  object.reliefQualified = reader.readStringList(offsets[13]);
  object.rosterName = reader.readStringOrNull(offsets[14]);
  object.specialDutyCode = reader.readStringOrNull(offsets[15]);
  object.specialDutyCodeDescription = reader.readStringOrNull(offsets[16]);
  object.surname = reader.readStringOrNull(offsets[17]);
  return object;
}

P _pilotProfileDeserializeProp<P>(
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
      return (reader.readLongList(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringList(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pilotProfileGetId(PilotProfile object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pilotProfileGetLinks(PilotProfile object) {
  return [];
}

void _pilotProfileAttach(
    IsarCollection<dynamic> col, Id id, PilotProfile object) {
  object.id = id;
}

extension PilotProfileByIndex on IsarCollection<PilotProfile> {
  Future<PilotProfile?> getByRosterName(String? rosterName) {
    return getByIndex(r'rosterName', [rosterName]);
  }

  PilotProfile? getByRosterNameSync(String? rosterName) {
    return getByIndexSync(r'rosterName', [rosterName]);
  }

  Future<bool> deleteByRosterName(String? rosterName) {
    return deleteByIndex(r'rosterName', [rosterName]);
  }

  bool deleteByRosterNameSync(String? rosterName) {
    return deleteByIndexSync(r'rosterName', [rosterName]);
  }

  Future<List<PilotProfile?>> getAllByRosterName(
      List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'rosterName', values);
  }

  List<PilotProfile?> getAllByRosterNameSync(List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'rosterName', values);
  }

  Future<int> deleteAllByRosterName(List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'rosterName', values);
  }

  int deleteAllByRosterNameSync(List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'rosterName', values);
  }

  Future<Id> putByRosterName(PilotProfile object) {
    return putByIndex(r'rosterName', object);
  }

  Id putByRosterNameSync(PilotProfile object, {bool saveLinks = true}) {
    return putByIndexSync(r'rosterName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByRosterName(List<PilotProfile> objects) {
    return putAllByIndex(r'rosterName', objects);
  }

  List<Id> putAllByRosterNameSync(List<PilotProfile> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'rosterName', objects, saveLinks: saveLinks);
  }

  Future<PilotProfile?> getByGalacxyId(String? galacxyId) {
    return getByIndex(r'galacxyId', [galacxyId]);
  }

  PilotProfile? getByGalacxyIdSync(String? galacxyId) {
    return getByIndexSync(r'galacxyId', [galacxyId]);
  }

  Future<bool> deleteByGalacxyId(String? galacxyId) {
    return deleteByIndex(r'galacxyId', [galacxyId]);
  }

  bool deleteByGalacxyIdSync(String? galacxyId) {
    return deleteByIndexSync(r'galacxyId', [galacxyId]);
  }

  Future<List<PilotProfile?>> getAllByGalacxyId(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'galacxyId', values);
  }

  List<PilotProfile?> getAllByGalacxyIdSync(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'galacxyId', values);
  }

  Future<int> deleteAllByGalacxyId(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'galacxyId', values);
  }

  int deleteAllByGalacxyIdSync(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'galacxyId', values);
  }

  Future<Id> putByGalacxyId(PilotProfile object) {
    return putByIndex(r'galacxyId', object);
  }

  Id putByGalacxyIdSync(PilotProfile object, {bool saveLinks = true}) {
    return putByIndexSync(r'galacxyId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByGalacxyId(List<PilotProfile> objects) {
    return putAllByIndex(r'galacxyId', objects);
  }

  List<Id> putAllByGalacxyIdSync(List<PilotProfile> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'galacxyId', objects, saveLinks: saveLinks);
  }
}

extension PilotProfileQueryWhereSort
    on QueryBuilder<PilotProfile, PilotProfile, QWhere> {
  QueryBuilder<PilotProfile, PilotProfile, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhere> anyRosterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rosterName'),
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhere> anyGalacxyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'galacxyId'),
      );
    });
  }
}

extension PilotProfileQueryWhere
    on QueryBuilder<PilotProfile, PilotProfile, QWhereClause> {
  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> idBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rosterName',
        value: [null],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> rosterNameEqualTo(
      String? rosterName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rosterName',
        value: [rosterName],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameNotEqualTo(String? rosterName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [],
              upper: [rosterName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [rosterName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [rosterName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [],
              upper: [rosterName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameGreaterThan(
    String? rosterName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [rosterName],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameLessThan(
    String? rosterName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [],
        upper: [rosterName],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> rosterNameBetween(
    String? lowerRosterName,
    String? upperRosterName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [lowerRosterName],
        includeLower: includeLower,
        upper: [upperRosterName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameStartsWith(String RosterNamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [RosterNamePrefix],
        upper: ['$RosterNamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rosterName',
        value: [''],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      rosterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'rosterName',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'rosterName',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'rosterName',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'rosterName',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'galacxyId',
        value: [null],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> galacxyIdEqualTo(
      String? galacxyId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'galacxyId',
        value: [galacxyId],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdNotEqualTo(String? galacxyId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [],
              upper: [galacxyId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [galacxyId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [galacxyId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [],
              upper: [galacxyId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdGreaterThan(
    String? galacxyId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [galacxyId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> galacxyIdLessThan(
    String? galacxyId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [],
        upper: [galacxyId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause> galacxyIdBetween(
    String? lowerGalacxyId,
    String? upperGalacxyId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [lowerGalacxyId],
        includeLower: includeLower,
        upper: [upperGalacxyId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdStartsWith(String GalacxyIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [GalacxyIdPrefix],
        upper: ['$GalacxyIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'galacxyId',
        value: [''],
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterWhereClause>
      galacxyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'galacxyId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'galacxyId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'galacxyId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'galacxyId',
              upper: [''],
            ));
      }
    });
  }
}

extension PilotProfileQueryFilter
    on QueryBuilder<PilotProfile, PilotProfile, QFilterCondition> {
  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameStartsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      badgeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortGreaterThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortStartsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'basePort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      basePortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commander',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commander',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderGreaterThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderStartsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'commander',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'commander',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commander',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      commanderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'commander',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyGreaterThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyStartsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'companyEmail',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'companyEmail',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'companyEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      companyEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategorySeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategorySeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategorySeniorityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategorySeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      crewCategorySeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentErn',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentErn',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentErn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currentErn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentErn',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      currentErnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currentErn',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyRecords',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyRecords',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyRecords',
        value: value,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyRecords',
        value: value,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyRecords',
        value: value,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyRecords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      dutyRecordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdStartsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'galacxyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      galacxyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryPhone',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryPhone',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryPhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryPhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      primaryPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      qualificationSeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      qualificationSeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      qualificationSeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      qualificationSeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      reliefQualifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reliefQualified',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      reliefQualifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reliefQualified',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      reliefQualifiedElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reliefQualified',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      reliefQualifiedElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reliefQualified',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      reliefQualifiedIsEmpty() {
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rosterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      rosterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surname',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surname',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameEqualTo(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameGreaterThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameLessThan(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameBetween(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameStartsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameEndsWith(
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

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surname',
        value: '',
      ));
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterFilterCondition>
      surnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surname',
        value: '',
      ));
    });
  }
}

extension PilotProfileQueryObject
    on QueryBuilder<PilotProfile, PilotProfile, QFilterCondition> {}

extension PilotProfileQueryLinks
    on QueryBuilder<PilotProfile, PilotProfile, QFilterCondition> {}

extension PilotProfileQuerySortBy
    on QueryBuilder<PilotProfile, PilotProfile, QSortBy> {
  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByAircraftTypeQualificationCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByAircraftTypeQualificationCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByBadgeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByBadgeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByBasePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByBasePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCommander() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commander', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCommanderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commander', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCompanyEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByCompanyEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCrewCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByCrewCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByCrewCategorySeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByCrewCategorySeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByCurrentErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByCurrentErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByGalacxyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByGalacxyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByPrimaryPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryPhone', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByPrimaryPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryPhone', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByQualificationSeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByQualificationSeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortByRosterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortByRosterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortBySpecialDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortBySpecialDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortBySpecialDutyCodeDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      sortBySpecialDutyCodeDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortBySurname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> sortBySurnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.desc);
    });
  }
}

extension PilotProfileQuerySortThenBy
    on QueryBuilder<PilotProfile, PilotProfile, QSortThenBy> {
  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByAircraftTypeQualificationCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByAircraftTypeQualificationCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByBadgeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByBadgeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByBasePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByBasePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCommander() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commander', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCommanderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commander', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCompanyEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByCompanyEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCrewCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByCrewCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByCrewCategorySeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByCrewCategorySeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByCurrentErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByCurrentErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByGalacxyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByGalacxyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByPrimaryPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryPhone', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByPrimaryPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryPhone', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByQualificationSeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByQualificationSeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenByRosterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenByRosterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenBySpecialDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenBySpecialDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenBySpecialDutyCodeDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy>
      thenBySpecialDutyCodeDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.desc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenBySurname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.asc);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QAfterSortBy> thenBySurnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surname', Sort.desc);
    });
  }
}

extension PilotProfileQueryWhereDistinct
    on QueryBuilder<PilotProfile, PilotProfile, QDistinct> {
  QueryBuilder<PilotProfile, PilotProfile, QDistinct>
      distinctByAircraftTypeQualificationCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aircraftTypeQualificationCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByBadgeName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'badgeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByBasePort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'basePort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByCommander(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commander', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByCompanyEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByCrewCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crewCategory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct>
      distinctByCrewCategorySeniority({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crewCategorySeniority',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByCurrentErn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentErn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByDutyRecords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyRecords');
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByGalacxyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'galacxyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByPrimaryPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryPhone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct>
      distinctByQualificationSeniority({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qualificationSeniority',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct>
      distinctByReliefQualified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reliefQualified');
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctByRosterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rosterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctBySpecialDutyCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialDutyCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct>
      distinctBySpecialDutyCodeDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialDutyCodeDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PilotProfile, PilotProfile, QDistinct> distinctBySurname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surname', caseSensitive: caseSensitive);
    });
  }
}

extension PilotProfileQueryProperty
    on QueryBuilder<PilotProfile, PilotProfile, QQueryProperty> {
  QueryBuilder<PilotProfile, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations>
      aircraftTypeQualificationCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aircraftTypeQualificationCode');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> badgeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'badgeName');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> basePortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'basePort');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> commanderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commander');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> companyEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyEmail');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> crewCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crewCategory');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations>
      crewCategorySeniorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crewCategorySeniority');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> currentErnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentErn');
    });
  }

  QueryBuilder<PilotProfile, List<int>?, QQueryOperations>
      dutyRecordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyRecords');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> galacxyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'galacxyId');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> primaryPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryPhone');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations>
      qualificationSeniorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qualificationSeniority');
    });
  }

  QueryBuilder<PilotProfile, List<String>?, QQueryOperations>
      reliefQualifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reliefQualified');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> rosterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rosterName');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations>
      specialDutyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialDutyCode');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations>
      specialDutyCodeDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialDutyCodeDescription');
    });
  }

  QueryBuilder<PilotProfile, String?, QQueryOperations> surnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surname');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCabinCrewProfileCollection on Isar {
  IsarCollection<CabinCrewProfile> get cabinCrewProfiles => this.collection();
}

const CabinCrewProfileSchema = CollectionSchema(
  name: r'CabinCrewProfile',
  id: -871549529392952184,
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
    r'companyEmail': PropertySchema(
      id: 4,
      name: r'companyEmail',
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
    r'currentErn': PropertySchema(
      id: 7,
      name: r'currentErn',
      type: IsarType.string,
    ),
    r'dutyRecords': PropertySchema(
      id: 8,
      name: r'dutyRecords',
      type: IsarType.longList,
    ),
    r'fleetCode': PropertySchema(
      id: 9,
      name: r'fleetCode',
      type: IsarType.string,
    ),
    r'galacxyId': PropertySchema(
      id: 10,
      name: r'galacxyId',
      type: IsarType.string,
    ),
    r'languageCode': PropertySchema(
      id: 11,
      name: r'languageCode',
      type: IsarType.string,
    ),
    r'qualificationSeniority': PropertySchema(
      id: 12,
      name: r'qualificationSeniority',
      type: IsarType.string,
    ),
    r'rosterName': PropertySchema(
      id: 13,
      name: r'rosterName',
      type: IsarType.string,
    ),
    r'specialDutyCode': PropertySchema(
      id: 14,
      name: r'specialDutyCode',
      type: IsarType.string,
    ),
    r'specialDutyCodeDescription': PropertySchema(
      id: 15,
      name: r'specialDutyCodeDescription',
      type: IsarType.string,
    )
  },
  estimateSize: _cabinCrewProfileEstimateSize,
  serialize: _cabinCrewProfileSerialize,
  deserialize: _cabinCrewProfileDeserialize,
  deserializeProp: _cabinCrewProfileDeserializeProp,
  idName: r'id',
  indexes: {
    r'rosterName': IndexSchema(
      id: 5108714675700069683,
      name: r'rosterName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'rosterName',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'galacxyId': IndexSchema(
      id: 7653308927333972035,
      name: r'galacxyId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'galacxyId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _cabinCrewProfileGetId,
  getLinks: _cabinCrewProfileGetLinks,
  attach: _cabinCrewProfileAttach,
  version: '3.1.0+1',
);

int _cabinCrewProfileEstimateSize(
  CabinCrewProfile object,
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
    final value = object.companyEmail;
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
    final value = object.currentErn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dutyRecords;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
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

void _cabinCrewProfileSerialize(
  CabinCrewProfile object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aircraftTypeQualificationCode);
  writer.writeString(offsets[1], object.badgeName);
  writer.writeString(offsets[2], object.basePort);
  writer.writeString(offsets[3], object.company);
  writer.writeString(offsets[4], object.companyEmail);
  writer.writeString(offsets[5], object.crewCategory);
  writer.writeString(offsets[6], object.crewCategorySeniority);
  writer.writeString(offsets[7], object.currentErn);
  writer.writeLongList(offsets[8], object.dutyRecords);
  writer.writeString(offsets[9], object.fleetCode);
  writer.writeString(offsets[10], object.galacxyId);
  writer.writeString(offsets[11], object.languageCode);
  writer.writeString(offsets[12], object.qualificationSeniority);
  writer.writeString(offsets[13], object.rosterName);
  writer.writeString(offsets[14], object.specialDutyCode);
  writer.writeString(offsets[15], object.specialDutyCodeDescription);
}

CabinCrewProfile _cabinCrewProfileDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CabinCrewProfile();
  object.aircraftTypeQualificationCode = reader.readStringOrNull(offsets[0]);
  object.badgeName = reader.readStringOrNull(offsets[1]);
  object.basePort = reader.readStringOrNull(offsets[2]);
  object.company = reader.readStringOrNull(offsets[3]);
  object.companyEmail = reader.readStringOrNull(offsets[4]);
  object.crewCategory = reader.readStringOrNull(offsets[5]);
  object.crewCategorySeniority = reader.readStringOrNull(offsets[6]);
  object.currentErn = reader.readStringOrNull(offsets[7]);
  object.dutyRecords = reader.readLongList(offsets[8]);
  object.fleetCode = reader.readStringOrNull(offsets[9]);
  object.galacxyId = reader.readStringOrNull(offsets[10]);
  object.id = id;
  object.languageCode = reader.readStringOrNull(offsets[11]);
  object.qualificationSeniority = reader.readStringOrNull(offsets[12]);
  object.rosterName = reader.readStringOrNull(offsets[13]);
  object.specialDutyCode = reader.readStringOrNull(offsets[14]);
  object.specialDutyCodeDescription = reader.readStringOrNull(offsets[15]);
  return object;
}

P _cabinCrewProfileDeserializeProp<P>(
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
      return (reader.readLongList(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cabinCrewProfileGetId(CabinCrewProfile object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cabinCrewProfileGetLinks(CabinCrewProfile object) {
  return [];
}

void _cabinCrewProfileAttach(
    IsarCollection<dynamic> col, Id id, CabinCrewProfile object) {
  object.id = id;
}

extension CabinCrewProfileByIndex on IsarCollection<CabinCrewProfile> {
  Future<CabinCrewProfile?> getByRosterName(String? rosterName) {
    return getByIndex(r'rosterName', [rosterName]);
  }

  CabinCrewProfile? getByRosterNameSync(String? rosterName) {
    return getByIndexSync(r'rosterName', [rosterName]);
  }

  Future<bool> deleteByRosterName(String? rosterName) {
    return deleteByIndex(r'rosterName', [rosterName]);
  }

  bool deleteByRosterNameSync(String? rosterName) {
    return deleteByIndexSync(r'rosterName', [rosterName]);
  }

  Future<List<CabinCrewProfile?>> getAllByRosterName(
      List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'rosterName', values);
  }

  List<CabinCrewProfile?> getAllByRosterNameSync(
      List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'rosterName', values);
  }

  Future<int> deleteAllByRosterName(List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'rosterName', values);
  }

  int deleteAllByRosterNameSync(List<String?> rosterNameValues) {
    final values = rosterNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'rosterName', values);
  }

  Future<Id> putByRosterName(CabinCrewProfile object) {
    return putByIndex(r'rosterName', object);
  }

  Id putByRosterNameSync(CabinCrewProfile object, {bool saveLinks = true}) {
    return putByIndexSync(r'rosterName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByRosterName(List<CabinCrewProfile> objects) {
    return putAllByIndex(r'rosterName', objects);
  }

  List<Id> putAllByRosterNameSync(List<CabinCrewProfile> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'rosterName', objects, saveLinks: saveLinks);
  }

  Future<CabinCrewProfile?> getByGalacxyId(String? galacxyId) {
    return getByIndex(r'galacxyId', [galacxyId]);
  }

  CabinCrewProfile? getByGalacxyIdSync(String? galacxyId) {
    return getByIndexSync(r'galacxyId', [galacxyId]);
  }

  Future<bool> deleteByGalacxyId(String? galacxyId) {
    return deleteByIndex(r'galacxyId', [galacxyId]);
  }

  bool deleteByGalacxyIdSync(String? galacxyId) {
    return deleteByIndexSync(r'galacxyId', [galacxyId]);
  }

  Future<List<CabinCrewProfile?>> getAllByGalacxyId(
      List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'galacxyId', values);
  }

  List<CabinCrewProfile?> getAllByGalacxyIdSync(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'galacxyId', values);
  }

  Future<int> deleteAllByGalacxyId(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'galacxyId', values);
  }

  int deleteAllByGalacxyIdSync(List<String?> galacxyIdValues) {
    final values = galacxyIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'galacxyId', values);
  }

  Future<Id> putByGalacxyId(CabinCrewProfile object) {
    return putByIndex(r'galacxyId', object);
  }

  Id putByGalacxyIdSync(CabinCrewProfile object, {bool saveLinks = true}) {
    return putByIndexSync(r'galacxyId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByGalacxyId(List<CabinCrewProfile> objects) {
    return putAllByIndex(r'galacxyId', objects);
  }

  List<Id> putAllByGalacxyIdSync(List<CabinCrewProfile> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'galacxyId', objects, saveLinks: saveLinks);
  }
}

extension CabinCrewProfileQueryWhereSort
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QWhere> {
  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhere>
      anyRosterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rosterName'),
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhere> anyGalacxyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'galacxyId'),
      );
    });
  }
}

extension CabinCrewProfileQueryWhere
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QWhereClause> {
  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause> idBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rosterName',
        value: [null],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameEqualTo(String? rosterName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rosterName',
        value: [rosterName],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameNotEqualTo(String? rosterName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [],
              upper: [rosterName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [rosterName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [rosterName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rosterName',
              lower: [],
              upper: [rosterName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameGreaterThan(
    String? rosterName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [rosterName],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameLessThan(
    String? rosterName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [],
        upper: [rosterName],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameBetween(
    String? lowerRosterName,
    String? upperRosterName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [lowerRosterName],
        includeLower: includeLower,
        upper: [upperRosterName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameStartsWith(String RosterNamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rosterName',
        lower: [RosterNamePrefix],
        upper: ['$RosterNamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rosterName',
        value: [''],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      rosterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'rosterName',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'rosterName',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'rosterName',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'rosterName',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'galacxyId',
        value: [null],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdEqualTo(String? galacxyId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'galacxyId',
        value: [galacxyId],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdNotEqualTo(String? galacxyId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [],
              upper: [galacxyId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [galacxyId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [galacxyId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'galacxyId',
              lower: [],
              upper: [galacxyId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdGreaterThan(
    String? galacxyId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [galacxyId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdLessThan(
    String? galacxyId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [],
        upper: [galacxyId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdBetween(
    String? lowerGalacxyId,
    String? upperGalacxyId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [lowerGalacxyId],
        includeLower: includeLower,
        upper: [upperGalacxyId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdStartsWith(String GalacxyIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'galacxyId',
        lower: [GalacxyIdPrefix],
        upper: ['$GalacxyIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'galacxyId',
        value: [''],
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterWhereClause>
      galacxyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'galacxyId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'galacxyId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'galacxyId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'galacxyId',
              upper: [''],
            ));
      }
    });
  }
}

extension CabinCrewProfileQueryFilter
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QFilterCondition> {
  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aircraftTypeQualificationCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      aircraftTypeQualificationCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aircraftTypeQualificationCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'badgeName',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameLessThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameStartsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameEndsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      badgeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'basePort',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortGreaterThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortLessThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortStartsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortEndsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'basePort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'basePort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      basePortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'basePort',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyGreaterThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyLessThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyStartsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEndsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'companyEmail',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'companyEmail',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'companyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'companyEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      companyEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategory',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crewCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategorySeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategorySeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crewCategorySeniority',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategorySeniorityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crewCategorySeniority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategorySeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      crewCategorySeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crewCategorySeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentErn',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentErn',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentErn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currentErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currentErn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentErn',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      currentErnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currentErn',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyRecords',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyRecords',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyRecords',
        value: value,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyRecords',
        value: value,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyRecords',
        value: value,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyRecords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      dutyRecordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dutyRecords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fleetCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fleetCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeLessThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeStartsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeEndsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fleetCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fleetCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fleetCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      fleetCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fleetCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'galacxyId',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdLessThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdStartsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdEndsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'galacxyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'galacxyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      galacxyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'galacxyId',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languageCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languageCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languageCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      languageCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      qualificationSeniorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      qualificationSeniorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualificationSeniority',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      qualificationSeniorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      qualificationSeniorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualificationSeniority',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rosterName',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameEqualTo(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameLessThan(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameBetween(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameEndsWith(
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rosterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rosterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      rosterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rosterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCode',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialDutyCodeDescription',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
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

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterFilterCondition>
      specialDutyCodeDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialDutyCodeDescription',
        value: '',
      ));
    });
  }
}

extension CabinCrewProfileQueryObject
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QFilterCondition> {}

extension CabinCrewProfileQueryLinks
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QFilterCondition> {}

extension CabinCrewProfileQuerySortBy
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QSortBy> {
  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByAircraftTypeQualificationCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByAircraftTypeQualificationCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByBadgeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByBadgeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByBasePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByBasePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCompanyEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCompanyEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCrewCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCrewCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCrewCategorySeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCrewCategorySeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCurrentErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByCurrentErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByFleetCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fleetCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByFleetCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fleetCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByGalacxyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByGalacxyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByQualificationSeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByQualificationSeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByRosterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortByRosterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortBySpecialDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortBySpecialDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortBySpecialDutyCodeDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      sortBySpecialDutyCodeDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.desc);
    });
  }
}

extension CabinCrewProfileQuerySortThenBy
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QSortThenBy> {
  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByAircraftTypeQualificationCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByAircraftTypeQualificationCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aircraftTypeQualificationCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByBadgeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByBadgeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeName', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByBasePort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByBasePortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'basePort', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCompanyEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCompanyEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyEmail', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCrewCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCrewCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategory', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCrewCategorySeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCrewCategorySeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crewCategorySeniority', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCurrentErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByCurrentErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentErn', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByFleetCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fleetCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByFleetCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fleetCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByGalacxyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByGalacxyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'galacxyId', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByQualificationSeniority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByQualificationSeniorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualificationSeniority', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByRosterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenByRosterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rosterName', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenBySpecialDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenBySpecialDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCode', Sort.desc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenBySpecialDutyCodeDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.asc);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QAfterSortBy>
      thenBySpecialDutyCodeDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDutyCodeDescription', Sort.desc);
    });
  }
}

extension CabinCrewProfileQueryWhereDistinct
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct> {
  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByAircraftTypeQualificationCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aircraftTypeQualificationCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByBadgeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'badgeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByBasePort({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'basePort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByCompanyEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByCrewCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crewCategory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByCrewCategorySeniority({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crewCategorySeniority',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByCurrentErn({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentErn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByDutyRecords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyRecords');
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByFleetCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fleetCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByGalacxyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'galacxyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByLanguageCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languageCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByQualificationSeniority({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qualificationSeniority',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctByRosterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rosterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctBySpecialDutyCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialDutyCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CabinCrewProfile, CabinCrewProfile, QDistinct>
      distinctBySpecialDutyCodeDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialDutyCodeDescription',
          caseSensitive: caseSensitive);
    });
  }
}

extension CabinCrewProfileQueryProperty
    on QueryBuilder<CabinCrewProfile, CabinCrewProfile, QQueryProperty> {
  QueryBuilder<CabinCrewProfile, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      aircraftTypeQualificationCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aircraftTypeQualificationCode');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      badgeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'badgeName');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations> basePortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'basePort');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      companyEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyEmail');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      crewCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crewCategory');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      crewCategorySeniorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crewCategorySeniority');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      currentErnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentErn');
    });
  }

  QueryBuilder<CabinCrewProfile, List<int>?, QQueryOperations>
      dutyRecordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyRecords');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      fleetCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fleetCode');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      galacxyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'galacxyId');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      languageCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languageCode');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      qualificationSeniorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qualificationSeniority');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      rosterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rosterName');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      specialDutyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialDutyCode');
    });
  }

  QueryBuilder<CabinCrewProfile, String?, QQueryOperations>
      specialDutyCodeDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialDutyCodeDescription');
    });
  }
}
