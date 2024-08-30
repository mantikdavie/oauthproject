// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDutyRecordCollection on Isar {
  IsarCollection<DutyRecord> get dutyRecords => this.collection();
}

const DutyRecordSchema = CollectionSchema(
  name: r'DutyRecord',
  id: 8353442734531254622,
  properties: {
    r'acType': PropertySchema(
      id: 0,
      name: r'acType',
      type: IsarType.string,
    ),
    r'acftReg': PropertySchema(
      id: 1,
      name: r'acftReg',
      type: IsarType.string,
    ),
    r'acftSvcType': PropertySchema(
      id: 2,
      name: r'acftSvcType',
      type: IsarType.string,
    ),
    r'acftTypeCode': PropertySchema(
      id: 3,
      name: r'acftTypeCode',
      type: IsarType.string,
    ),
    r'acftTypeFr': PropertySchema(
      id: 4,
      name: r'acftTypeFr',
      type: IsarType.string,
    ),
    r'actLandingDtmUtc': PropertySchema(
      id: 5,
      name: r'actLandingDtmUtc',
      type: IsarType.dateTime,
    ),
    r'actTakeoffDtmUtc': PropertySchema(
      id: 6,
      name: r'actTakeoffDtmUtc',
      type: IsarType.dateTime,
    ),
    r'airbourneGmt': PropertySchema(
      id: 7,
      name: r'airbourneGmt',
      type: IsarType.dateTime,
    ),
    r'arrDtmLoc': PropertySchema(
      id: 8,
      name: r'arrDtmLoc',
      type: IsarType.dateTime,
    ),
    r'arrDtmUtc': PropertySchema(
      id: 9,
      name: r'arrDtmUtc',
      type: IsarType.dateTime,
    ),
    r'autoLandInd': PropertySchema(
      id: 10,
      name: r'autoLandInd',
      type: IsarType.string,
    ),
    r'blockMins': PropertySchema(
      id: 11,
      name: r'blockMins',
      type: IsarType.string,
    ),
    r'carrier': PropertySchema(
      id: 12,
      name: r'carrier',
      type: IsarType.string,
    ),
    r'catg': PropertySchema(
      id: 13,
      name: r'catg',
      type: IsarType.string,
    ),
    r'cmdrName': PropertySchema(
      id: 14,
      name: r'cmdrName',
      type: IsarType.string,
    ),
    r'crwBase': PropertySchema(
      id: 15,
      name: r'crwBase',
      type: IsarType.string,
    ),
    r'crwCatg': PropertySchema(
      id: 16,
      name: r'crwCatg',
      type: IsarType.string,
    ),
    r'crwCatgSenrty': PropertySchema(
      id: 17,
      name: r'crwCatgSenrty',
      type: IsarType.string,
    ),
    r'crwQualSenrty': PropertySchema(
      id: 18,
      name: r'crwQualSenrty',
      type: IsarType.string,
    ),
    r'cxLogbookId': PropertySchema(
      id: 19,
      name: r'cxLogbookId',
      type: IsarType.string,
    ),
    r'deptrDtmLoc': PropertySchema(
      id: 20,
      name: r'deptrDtmLoc',
      type: IsarType.dateTime,
    ),
    r'deptrDtmUtc': PropertySchema(
      id: 21,
      name: r'deptrDtmUtc',
      type: IsarType.dateTime,
    ),
    r'dutyEndDtmLoc': PropertySchema(
      id: 22,
      name: r'dutyEndDtmLoc',
      type: IsarType.dateTime,
    ),
    r'dutyEndDtmUtc': PropertySchema(
      id: 23,
      name: r'dutyEndDtmUtc',
      type: IsarType.dateTime,
    ),
    r'dutyStartDtmLoc': PropertySchema(
      id: 24,
      name: r'dutyStartDtmLoc',
      type: IsarType.dateTime,
    ),
    r'dutyStartDtmUtc': PropertySchema(
      id: 25,
      name: r'dutyStartDtmUtc',
      type: IsarType.dateTime,
    ),
    r'dutyType': PropertySchema(
      id: 26,
      name: r'dutyType',
      type: IsarType.string,
    ),
    r'fltDate': PropertySchema(
      id: 27,
      name: r'fltDate',
      type: IsarType.dateTime,
    ),
    r'fltNo': PropertySchema(
      id: 28,
      name: r'fltNo',
      type: IsarType.string,
    ),
    r'fopErn': PropertySchema(
      id: 29,
      name: r'fopErn',
      type: IsarType.string,
    ),
    r'gdDutyCode': PropertySchema(
      id: 30,
      name: r'gdDutyCode',
      type: IsarType.string,
    ),
    r'landingGmt': PropertySchema(
      id: 31,
      name: r'landingGmt',
      type: IsarType.dateTime,
    ),
    r'noOfLanding': PropertySchema(
      id: 32,
      name: r'noOfLanding',
      type: IsarType.string,
    ),
    r'noOfTakeoff': PropertySchema(
      id: 33,
      name: r'noOfTakeoff',
      type: IsarType.string,
    ),
    r'sctDstn': PropertySchema(
      id: 34,
      name: r'sctDstn',
      type: IsarType.string,
    ),
    r'sctOri': PropertySchema(
      id: 35,
      name: r'sctOri',
      type: IsarType.string,
    ),
    r'simEndDtmLoc': PropertySchema(
      id: 36,
      name: r'simEndDtmLoc',
      type: IsarType.dateTime,
    ),
    r'simEndDtmUtc': PropertySchema(
      id: 37,
      name: r'simEndDtmUtc',
      type: IsarType.dateTime,
    ),
    r'simStartDtmLoc': PropertySchema(
      id: 38,
      name: r'simStartDtmLoc',
      type: IsarType.dateTime,
    ),
    r'simStartDtmUtc': PropertySchema(
      id: 39,
      name: r'simStartDtmUtc',
      type: IsarType.dateTime,
    ),
    r'speclDutyCode': PropertySchema(
      id: 40,
      name: r'speclDutyCode',
      type: IsarType.string,
    ),
    r'svcCompany': PropertySchema(
      id: 41,
      name: r'svcCompany',
      type: IsarType.string,
    )
  },
  estimateSize: _dutyRecordEstimateSize,
  serialize: _dutyRecordSerialize,
  deserialize: _dutyRecordDeserialize,
  deserializeProp: _dutyRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'cxLogbookId': IndexSchema(
      id: -8419774140921474784,
      name: r'cxLogbookId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'cxLogbookId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'fltDate': IndexSchema(
      id: -6059617815629185335,
      name: r'fltDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fltDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'acftReg': IndexSchema(
      id: -9063593880008841221,
      name: r'acftReg',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'acftReg',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'acftTypeFr': IndexSchema(
      id: -2620405375000382205,
      name: r'acftTypeFr',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'acftTypeFr',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'dutyStartDtmLoc': IndexSchema(
      id: 7427004241900354312,
      name: r'dutyStartDtmLoc',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dutyStartDtmLoc',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _dutyRecordGetId,
  getLinks: _dutyRecordGetLinks,
  attach: _dutyRecordAttach,
  version: '3.1.0+1',
);

int _dutyRecordEstimateSize(
  DutyRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.acType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.acftReg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.acftSvcType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.acftTypeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.acftTypeFr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.autoLandInd;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.blockMins;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.carrier;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.catg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cmdrName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crwBase;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crwCatg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crwCatgSenrty;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.crwQualSenrty;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cxLogbookId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dutyType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fltNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fopErn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.gdDutyCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noOfLanding;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noOfTakeoff;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sctDstn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sctOri;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.speclDutyCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.svcCompany;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _dutyRecordSerialize(
  DutyRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.acType);
  writer.writeString(offsets[1], object.acftReg);
  writer.writeString(offsets[2], object.acftSvcType);
  writer.writeString(offsets[3], object.acftTypeCode);
  writer.writeString(offsets[4], object.acftTypeFr);
  writer.writeDateTime(offsets[5], object.actLandingDtmUtc);
  writer.writeDateTime(offsets[6], object.actTakeoffDtmUtc);
  writer.writeDateTime(offsets[7], object.airbourneGmt);
  writer.writeDateTime(offsets[8], object.arrDtmLoc);
  writer.writeDateTime(offsets[9], object.arrDtmUtc);
  writer.writeString(offsets[10], object.autoLandInd);
  writer.writeString(offsets[11], object.blockMins);
  writer.writeString(offsets[12], object.carrier);
  writer.writeString(offsets[13], object.catg);
  writer.writeString(offsets[14], object.cmdrName);
  writer.writeString(offsets[15], object.crwBase);
  writer.writeString(offsets[16], object.crwCatg);
  writer.writeString(offsets[17], object.crwCatgSenrty);
  writer.writeString(offsets[18], object.crwQualSenrty);
  writer.writeString(offsets[19], object.cxLogbookId);
  writer.writeDateTime(offsets[20], object.deptrDtmLoc);
  writer.writeDateTime(offsets[21], object.deptrDtmUtc);
  writer.writeDateTime(offsets[22], object.dutyEndDtmLoc);
  writer.writeDateTime(offsets[23], object.dutyEndDtmUtc);
  writer.writeDateTime(offsets[24], object.dutyStartDtmLoc);
  writer.writeDateTime(offsets[25], object.dutyStartDtmUtc);
  writer.writeString(offsets[26], object.dutyType);
  writer.writeDateTime(offsets[27], object.fltDate);
  writer.writeString(offsets[28], object.fltNo);
  writer.writeString(offsets[29], object.fopErn);
  writer.writeString(offsets[30], object.gdDutyCode);
  writer.writeDateTime(offsets[31], object.landingGmt);
  writer.writeString(offsets[32], object.noOfLanding);
  writer.writeString(offsets[33], object.noOfTakeoff);
  writer.writeString(offsets[34], object.sctDstn);
  writer.writeString(offsets[35], object.sctOri);
  writer.writeDateTime(offsets[36], object.simEndDtmLoc);
  writer.writeDateTime(offsets[37], object.simEndDtmUtc);
  writer.writeDateTime(offsets[38], object.simStartDtmLoc);
  writer.writeDateTime(offsets[39], object.simStartDtmUtc);
  writer.writeString(offsets[40], object.speclDutyCode);
  writer.writeString(offsets[41], object.svcCompany);
}

DutyRecord _dutyRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DutyRecord();
  object.acType = reader.readStringOrNull(offsets[0]);
  object.acftReg = reader.readStringOrNull(offsets[1]);
  object.acftSvcType = reader.readStringOrNull(offsets[2]);
  object.acftTypeCode = reader.readStringOrNull(offsets[3]);
  object.acftTypeFr = reader.readStringOrNull(offsets[4]);
  object.actLandingDtmUtc = reader.readDateTimeOrNull(offsets[5]);
  object.actTakeoffDtmUtc = reader.readDateTimeOrNull(offsets[6]);
  object.airbourneGmt = reader.readDateTimeOrNull(offsets[7]);
  object.arrDtmLoc = reader.readDateTimeOrNull(offsets[8]);
  object.arrDtmUtc = reader.readDateTimeOrNull(offsets[9]);
  object.autoLandInd = reader.readStringOrNull(offsets[10]);
  object.blockMins = reader.readStringOrNull(offsets[11]);
  object.carrier = reader.readStringOrNull(offsets[12]);
  object.catg = reader.readStringOrNull(offsets[13]);
  object.cmdrName = reader.readStringOrNull(offsets[14]);
  object.crwBase = reader.readStringOrNull(offsets[15]);
  object.crwCatg = reader.readStringOrNull(offsets[16]);
  object.crwCatgSenrty = reader.readStringOrNull(offsets[17]);
  object.crwQualSenrty = reader.readStringOrNull(offsets[18]);
  object.cxLogbookId = reader.readStringOrNull(offsets[19]);
  object.deptrDtmLoc = reader.readDateTimeOrNull(offsets[20]);
  object.deptrDtmUtc = reader.readDateTimeOrNull(offsets[21]);
  object.dutyEndDtmLoc = reader.readDateTimeOrNull(offsets[22]);
  object.dutyEndDtmUtc = reader.readDateTimeOrNull(offsets[23]);
  object.dutyStartDtmLoc = reader.readDateTimeOrNull(offsets[24]);
  object.dutyStartDtmUtc = reader.readDateTimeOrNull(offsets[25]);
  object.dutyType = reader.readStringOrNull(offsets[26]);
  object.fltDate = reader.readDateTimeOrNull(offsets[27]);
  object.fltNo = reader.readStringOrNull(offsets[28]);
  object.fopErn = reader.readStringOrNull(offsets[29]);
  object.gdDutyCode = reader.readStringOrNull(offsets[30]);
  object.id = id;
  object.landingGmt = reader.readDateTimeOrNull(offsets[31]);
  object.noOfLanding = reader.readStringOrNull(offsets[32]);
  object.noOfTakeoff = reader.readStringOrNull(offsets[33]);
  object.sctDstn = reader.readStringOrNull(offsets[34]);
  object.sctOri = reader.readStringOrNull(offsets[35]);
  object.simEndDtmLoc = reader.readDateTimeOrNull(offsets[36]);
  object.simEndDtmUtc = reader.readDateTimeOrNull(offsets[37]);
  object.simStartDtmLoc = reader.readDateTimeOrNull(offsets[38]);
  object.simStartDtmUtc = reader.readDateTimeOrNull(offsets[39]);
  object.speclDutyCode = reader.readStringOrNull(offsets[40]);
  object.svcCompany = reader.readStringOrNull(offsets[41]);
  return object;
}

P _dutyRecordDeserializeProp<P>(
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
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
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 21:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 22:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 23:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 24:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 25:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 37:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 38:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 39:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dutyRecordGetId(DutyRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dutyRecordGetLinks(DutyRecord object) {
  return [];
}

void _dutyRecordAttach(IsarCollection<dynamic> col, Id id, DutyRecord object) {
  object.id = id;
}

extension DutyRecordByIndex on IsarCollection<DutyRecord> {
  Future<DutyRecord?> getByCxLogbookId(String? cxLogbookId) {
    return getByIndex(r'cxLogbookId', [cxLogbookId]);
  }

  DutyRecord? getByCxLogbookIdSync(String? cxLogbookId) {
    return getByIndexSync(r'cxLogbookId', [cxLogbookId]);
  }

  Future<bool> deleteByCxLogbookId(String? cxLogbookId) {
    return deleteByIndex(r'cxLogbookId', [cxLogbookId]);
  }

  bool deleteByCxLogbookIdSync(String? cxLogbookId) {
    return deleteByIndexSync(r'cxLogbookId', [cxLogbookId]);
  }

  Future<List<DutyRecord?>> getAllByCxLogbookId(
      List<String?> cxLogbookIdValues) {
    final values = cxLogbookIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'cxLogbookId', values);
  }

  List<DutyRecord?> getAllByCxLogbookIdSync(List<String?> cxLogbookIdValues) {
    final values = cxLogbookIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'cxLogbookId', values);
  }

  Future<int> deleteAllByCxLogbookId(List<String?> cxLogbookIdValues) {
    final values = cxLogbookIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'cxLogbookId', values);
  }

  int deleteAllByCxLogbookIdSync(List<String?> cxLogbookIdValues) {
    final values = cxLogbookIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'cxLogbookId', values);
  }

  Future<Id> putByCxLogbookId(DutyRecord object) {
    return putByIndex(r'cxLogbookId', object);
  }

  Id putByCxLogbookIdSync(DutyRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'cxLogbookId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCxLogbookId(List<DutyRecord> objects) {
    return putAllByIndex(r'cxLogbookId', objects);
  }

  List<Id> putAllByCxLogbookIdSync(List<DutyRecord> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'cxLogbookId', objects, saveLinks: saveLinks);
  }
}

extension DutyRecordQueryWhereSort
    on QueryBuilder<DutyRecord, DutyRecord, QWhere> {
  QueryBuilder<DutyRecord, DutyRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhere> anyCxLogbookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'cxLogbookId'),
      );
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhere> anyFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fltDate'),
      );
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhere> anyAcftReg() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'acftReg'),
      );
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhere> anyAcftTypeFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'acftTypeFr'),
      );
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhere> anyDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dutyStartDtmLoc'),
      );
    });
  }
}

extension DutyRecordQueryWhere
    on QueryBuilder<DutyRecord, DutyRecord, QWhereClause> {
  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> idBetween(
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

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cxLogbookId',
        value: [null],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      cxLogbookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdEqualTo(
      String? cxLogbookId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cxLogbookId',
        value: [cxLogbookId],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdNotEqualTo(
      String? cxLogbookId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cxLogbookId',
              lower: [],
              upper: [cxLogbookId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cxLogbookId',
              lower: [cxLogbookId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cxLogbookId',
              lower: [cxLogbookId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cxLogbookId',
              lower: [],
              upper: [cxLogbookId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      cxLogbookIdGreaterThan(
    String? cxLogbookId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [cxLogbookId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdLessThan(
    String? cxLogbookId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [],
        upper: [cxLogbookId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdBetween(
    String? lowerCxLogbookId,
    String? upperCxLogbookId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [lowerCxLogbookId],
        includeLower: includeLower,
        upper: [upperCxLogbookId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdStartsWith(
      String CxLogbookIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [CxLogbookIdPrefix],
        upper: ['$CxLogbookIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> cxLogbookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cxLogbookId',
        value: [''],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      cxLogbookIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'cxLogbookId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'cxLogbookId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'cxLogbookId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'cxLogbookId',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fltDate',
        value: [null],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fltDate',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateEqualTo(
      DateTime? fltDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fltDate',
        value: [fltDate],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateNotEqualTo(
      DateTime? fltDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fltDate',
              lower: [],
              upper: [fltDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fltDate',
              lower: [fltDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fltDate',
              lower: [fltDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fltDate',
              lower: [],
              upper: [fltDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateGreaterThan(
    DateTime? fltDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fltDate',
        lower: [fltDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateLessThan(
    DateTime? fltDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fltDate',
        lower: [],
        upper: [fltDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> fltDateBetween(
    DateTime? lowerFltDate,
    DateTime? upperFltDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fltDate',
        lower: [lowerFltDate],
        includeLower: includeLower,
        upper: [upperFltDate],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftReg',
        value: [null],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegEqualTo(
      String? acftReg) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftReg',
        value: [acftReg],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegNotEqualTo(
      String? acftReg) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftReg',
              lower: [],
              upper: [acftReg],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftReg',
              lower: [acftReg],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftReg',
              lower: [acftReg],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftReg',
              lower: [],
              upper: [acftReg],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegGreaterThan(
    String? acftReg, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [acftReg],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegLessThan(
    String? acftReg, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [],
        upper: [acftReg],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegBetween(
    String? lowerAcftReg,
    String? upperAcftReg, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [lowerAcftReg],
        includeLower: includeLower,
        upper: [upperAcftReg],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegStartsWith(
      String AcftRegPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [AcftRegPrefix],
        upper: ['$AcftRegPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftReg',
        value: [''],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftRegIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'acftReg',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'acftReg',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'acftReg',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'acftReg',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftTypeFr',
        value: [null],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      acftTypeFrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrEqualTo(
      String? acftTypeFr) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftTypeFr',
        value: [acftTypeFr],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrNotEqualTo(
      String? acftTypeFr) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftTypeFr',
              lower: [],
              upper: [acftTypeFr],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftTypeFr',
              lower: [acftTypeFr],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftTypeFr',
              lower: [acftTypeFr],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acftTypeFr',
              lower: [],
              upper: [acftTypeFr],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrGreaterThan(
    String? acftTypeFr, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [acftTypeFr],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrLessThan(
    String? acftTypeFr, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [],
        upper: [acftTypeFr],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrBetween(
    String? lowerAcftTypeFr,
    String? upperAcftTypeFr, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [lowerAcftTypeFr],
        includeLower: includeLower,
        upper: [upperAcftTypeFr],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrStartsWith(
      String AcftTypeFrPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [AcftTypeFrPrefix],
        upper: ['$AcftTypeFrPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause> acftTypeFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftTypeFr',
        value: [''],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      acftTypeFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'acftTypeFr',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'acftTypeFr',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'acftTypeFr',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'acftTypeFr',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dutyStartDtmLoc',
        value: [null],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyStartDtmLoc',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocEqualTo(DateTime? dutyStartDtmLoc) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dutyStartDtmLoc',
        value: [dutyStartDtmLoc],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocNotEqualTo(DateTime? dutyStartDtmLoc) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyStartDtmLoc',
              lower: [],
              upper: [dutyStartDtmLoc],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyStartDtmLoc',
              lower: [dutyStartDtmLoc],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyStartDtmLoc',
              lower: [dutyStartDtmLoc],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dutyStartDtmLoc',
              lower: [],
              upper: [dutyStartDtmLoc],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocGreaterThan(
    DateTime? dutyStartDtmLoc, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyStartDtmLoc',
        lower: [dutyStartDtmLoc],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocLessThan(
    DateTime? dutyStartDtmLoc, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyStartDtmLoc',
        lower: [],
        upper: [dutyStartDtmLoc],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterWhereClause>
      dutyStartDtmLocBetween(
    DateTime? lowerDutyStartDtmLoc,
    DateTime? upperDutyStartDtmLoc, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyStartDtmLoc',
        lower: [lowerDutyStartDtmLoc],
        includeLower: includeLower,
        upper: [upperDutyStartDtmLoc],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DutyRecordQueryFilter
    on QueryBuilder<DutyRecord, DutyRecord, QFilterCondition> {
  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acType',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acType',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acType',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acType',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftReg',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftRegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftReg',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftReg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftRegGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acftReg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acftReg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acftReg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acftReg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acftReg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftReg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acftReg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftRegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftReg',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftRegIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftReg',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftSvcType',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftSvcType',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acftSvcType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acftSvcType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftSvcType',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftSvcTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftSvcType',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftTypeCode',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftTypeCode',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acftTypeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acftTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftTypeFr',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftTypeFr',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftTypeFrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftTypeFrBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acftTypeFr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> acftTypeFrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acftTypeFr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftTypeFr',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      acftTypeFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftTypeFr',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actLandingDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actLandingDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actLandingDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actLandingDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actLandingDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actLandingDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actLandingDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actLandingDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actLandingDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actLandingDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actLandingDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actLandingDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actTakeoffDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actTakeoffDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actTakeoffDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actTakeoffDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actTakeoffDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actTakeoffDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actTakeoffDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actTakeoffDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actTakeoffDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actTakeoffDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      actTakeoffDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actTakeoffDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      airbourneGmtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'airbourneGmt',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      airbourneGmtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'airbourneGmt',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      airbourneGmtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'airbourneGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      airbourneGmtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'airbourneGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      airbourneGmtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'airbourneGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      airbourneGmtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'airbourneGmt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      arrDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      arrDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> arrDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      arrDtmLocGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> arrDtmLocLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> arrDtmLocBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arrDtmLoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      arrDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      arrDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> arrDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      arrDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> arrDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> arrDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arrDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'autoLandInd',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'autoLandInd',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'autoLandInd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'autoLandInd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'autoLandInd',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      autoLandIndIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'autoLandInd',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      blockMinsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blockMins',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      blockMinsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blockMins',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> blockMinsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockMins',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      blockMinsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blockMins',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> blockMinsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blockMins',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> blockMinsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blockMins',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      blockMinsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'blockMins',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> blockMinsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'blockMins',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> blockMinsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'blockMins',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> blockMinsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'blockMins',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      blockMinsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockMins',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      blockMinsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'blockMins',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carrier',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      carrierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'carrier',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carrier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      carrierGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carrier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carrier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carrier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carrier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carrier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carrier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carrier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> carrierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carrier',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      carrierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carrier',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'catg',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'catg',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'catg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'catg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'catg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'catg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'catg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'catg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'catg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'catg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'catg',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> catgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'catg',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cmdrName',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cmdrNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cmdrName',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cmdrName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cmdrNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cmdrName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cmdrName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cmdrName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cmdrNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cmdrName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cmdrName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cmdrName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> cmdrNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cmdrName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cmdrNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cmdrName',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cmdrNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cmdrName',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwBase',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwBaseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwBase',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwBase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwBaseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crwBase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crwBase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crwBase',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crwBase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crwBase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crwBase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crwBase',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwBaseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwBase',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwBaseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwBase',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwCatg',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwCatg',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwCatg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crwCatg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crwCatg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crwCatg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crwCatg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crwCatg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crwCatg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crwCatg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> crwCatgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwCatg',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwCatg',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwCatgSenrty',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwCatgSenrty',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crwCatgSenrty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crwCatgSenrty',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwCatgSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwCatgSenrtyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwCatgSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwQualSenrty',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwQualSenrty',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crwQualSenrty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crwQualSenrty',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwQualSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      crwQualSenrtyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwQualSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cxLogbookId',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cxLogbookId',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cxLogbookId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cxLogbookId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cxLogbookId',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      cxLogbookIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cxLogbookId',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deptrDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deptrDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmLocEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deptrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmLocGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deptrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmLocLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deptrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmLocBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deptrDtmLoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deptrDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deptrDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deptrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deptrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deptrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      deptrDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deptrDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyEndDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyEndDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmLocEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmLocGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmLocLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmLocBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyEndDtmLoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyEndDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyEndDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyEndDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyEndDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyStartDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyStartDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmLocEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmLocGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmLocLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmLocBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyStartDtmLoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyStartDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyStartDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyStartDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyStartDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyType',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyType',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dutyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dutyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dutyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dutyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dutyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dutyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> dutyTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dutyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyType',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      dutyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dutyType',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fltDate',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      fltDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fltDate',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fltDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      fltDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fltDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fltDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fltDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fltNo',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fltNo',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fltNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fltNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fltNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fltNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fltNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fltNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fltNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fltNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fltNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fltNo',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      fltNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fltNo',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fopErn',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      fopErnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fopErn',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fopErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fopErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fopErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fopErn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fopErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fopErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fopErn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fopErn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> fopErnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fopErn',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      fopErnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fopErn',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gdDutyCode',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gdDutyCode',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> gdDutyCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> gdDutyCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gdDutyCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> gdDutyCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gdDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gdDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      gdDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gdDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      landingGmtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'landingGmt',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      landingGmtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'landingGmt',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> landingGmtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landingGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      landingGmtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'landingGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      landingGmtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'landingGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> landingGmtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'landingGmt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noOfLanding',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noOfLanding',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noOfLanding',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noOfLanding',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfLanding',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfLandingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noOfLanding',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noOfTakeoff',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noOfTakeoff',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noOfTakeoff',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noOfTakeoff',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfTakeoff',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      noOfTakeoffIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noOfTakeoff',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sctDstn',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      sctDstnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sctDstn',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sctDstn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      sctDstnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sctDstn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sctDstn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sctDstn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sctDstn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sctDstn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sctDstn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sctDstn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctDstnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sctDstn',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      sctDstnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sctDstn',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sctOri',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      sctOriIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sctOri',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sctOri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sctOri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sctOri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sctOri',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sctOri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sctOri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sctOri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sctOri',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> sctOriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sctOri',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      sctOriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sctOri',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simEndDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simEndDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmLocEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmLocGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'simEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmLocLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'simEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmLocBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'simEndDtmLoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simEndDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simEndDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'simEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'simEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simEndDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'simEndDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simStartDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simStartDtmLoc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmLocEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmLocGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'simStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmLocLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'simStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmLocBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'simStartDtmLoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simStartDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simStartDtmUtc',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmUtcEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmUtcGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'simStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmUtcLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'simStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      simStartDtmUtcBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'simStartDtmUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'speclDutyCode',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'speclDutyCode',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speclDutyCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speclDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speclDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      speclDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speclDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'svcCompany',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'svcCompany',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> svcCompanyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> svcCompanyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'svcCompany',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition> svcCompanyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'svcCompany',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svcCompany',
        value: '',
      ));
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterFilterCondition>
      svcCompanyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'svcCompany',
        value: '',
      ));
    });
  }
}

extension DutyRecordQueryObject
    on QueryBuilder<DutyRecord, DutyRecord, QFilterCondition> {}

extension DutyRecordQueryLinks
    on QueryBuilder<DutyRecord, DutyRecord, QFilterCondition> {}

extension DutyRecordQuerySortBy
    on QueryBuilder<DutyRecord, DutyRecord, QSortBy> {
  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftReg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftRegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftSvcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftSvcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftTypeFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAcftTypeFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByActLandingDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      sortByActLandingDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByActTakeoffDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      sortByActTakeoffDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAirbourneGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAirbourneGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByArrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByArrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByArrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByArrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAutoLandInd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByAutoLandIndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByBlockMins() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByBlockMinsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCarrier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCarrierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCmdrName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCmdrNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwCatgSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwCatgSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwQualSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCrwQualSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCxLogbookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByCxLogbookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDeptrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDeptrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDeptrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDeptrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      sortByDutyStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      sortByDutyStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByDutyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByFltDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByFltNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByFltNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByFopErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByFopErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByGdDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByGdDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByLandingGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByLandingGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByNoOfLanding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByNoOfLandingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByNoOfTakeoff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortByNoOfTakeoffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySctDstn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySctDstnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySctOri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySctOriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySimEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySimEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySimEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySimEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySimStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      sortBySimStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySimStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      sortBySimStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySpeclDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySpeclDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySvcCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> sortBySvcCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.desc);
    });
  }
}

extension DutyRecordQuerySortThenBy
    on QueryBuilder<DutyRecord, DutyRecord, QSortThenBy> {
  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftReg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftRegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftSvcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftSvcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftTypeFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAcftTypeFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByActLandingDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      thenByActLandingDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByActTakeoffDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      thenByActTakeoffDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAirbourneGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAirbourneGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByArrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByArrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByArrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByArrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAutoLandInd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByAutoLandIndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByBlockMins() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByBlockMinsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCarrier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCarrierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCmdrName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCmdrNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwCatgSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwCatgSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwQualSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCrwQualSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCxLogbookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByCxLogbookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDeptrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDeptrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDeptrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDeptrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      thenByDutyStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      thenByDutyStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByDutyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByFltDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByFltNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByFltNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByFopErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByFopErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByGdDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByGdDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByLandingGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByLandingGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByNoOfLanding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByNoOfLandingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByNoOfTakeoff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenByNoOfTakeoffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySctDstn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySctDstnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySctOri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySctOriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySimEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySimEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySimEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySimEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySimStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      thenBySimStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySimStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy>
      thenBySimStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySpeclDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySpeclDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.desc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySvcCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.asc);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QAfterSortBy> thenBySvcCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.desc);
    });
  }
}

extension DutyRecordQueryWhereDistinct
    on QueryBuilder<DutyRecord, DutyRecord, QDistinct> {
  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAcType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAcftReg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftReg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAcftSvcType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftSvcType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAcftTypeCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftTypeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAcftTypeFr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftTypeFr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByActLandingDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actLandingDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByActTakeoffDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actTakeoffDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAirbourneGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'airbourneGmt');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByArrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByArrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByAutoLandInd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'autoLandInd', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByBlockMins(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blockMins', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCarrier(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carrier', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCatg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'catg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCmdrName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cmdrName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCrwBase(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwBase', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCrwCatg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwCatg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCrwCatgSenrty(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwCatgSenrty',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCrwQualSenrty(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwQualSenrty',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByCxLogbookId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cxLogbookId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDeptrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deptrDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDeptrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deptrDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDutyEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyEndDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDutyEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyEndDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyStartDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDutyStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyStartDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByDutyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fltDate');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByFltNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fltNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByFopErn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fopErn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByGdDutyCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gdDutyCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByLandingGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'landingGmt');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByNoOfLanding(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noOfLanding', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctByNoOfTakeoff(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noOfTakeoff', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySctDstn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sctDstn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySctOri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sctOri', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySimEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simEndDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySimEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simEndDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySimStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simStartDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySimStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simStartDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySpeclDutyCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speclDutyCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DutyRecord, DutyRecord, QDistinct> distinctBySvcCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'svcCompany', caseSensitive: caseSensitive);
    });
  }
}

extension DutyRecordQueryProperty
    on QueryBuilder<DutyRecord, DutyRecord, QQueryProperty> {
  QueryBuilder<DutyRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> acTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acType');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> acftRegProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftReg');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> acftSvcTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftSvcType');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> acftTypeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftTypeCode');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> acftTypeFrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftTypeFr');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      actLandingDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actLandingDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      actTakeoffDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actTakeoffDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> airbourneGmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'airbourneGmt');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> arrDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> arrDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> autoLandIndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'autoLandInd');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> blockMinsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blockMins');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> carrierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carrier');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> catgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'catg');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> cmdrNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cmdrName');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> crwBaseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwBase');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> crwCatgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwCatg');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> crwCatgSenrtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwCatgSenrty');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> crwQualSenrtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwQualSenrty');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> cxLogbookIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cxLogbookId');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> deptrDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deptrDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> deptrDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deptrDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      dutyEndDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyEndDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      dutyEndDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyEndDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      dutyStartDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyStartDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      dutyStartDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyStartDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> dutyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyType');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> fltDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fltDate');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> fltNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fltNo');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> fopErnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fopErn');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> gdDutyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gdDutyCode');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> landingGmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'landingGmt');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> noOfLandingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noOfLanding');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> noOfTakeoffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noOfTakeoff');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> sctDstnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sctDstn');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> sctOriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sctOri');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> simEndDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simEndDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations> simEndDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simEndDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      simStartDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simStartDtmLoc');
    });
  }

  QueryBuilder<DutyRecord, DateTime?, QQueryOperations>
      simStartDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simStartDtmUtc');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> speclDutyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speclDutyCode');
    });
  }

  QueryBuilder<DutyRecord, String?, QQueryOperations> svcCompanyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'svcCompany');
    });
  }
}
