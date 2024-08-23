// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logbook.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogbookCollection on Isar {
  IsarCollection<Logbook> get logbooks => this.collection();
}

const LogbookSchema = CollectionSchema(
  name: r'Logbook',
  id: -4796740647223753524,
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
  estimateSize: _logbookEstimateSize,
  serialize: _logbookSerialize,
  deserialize: _logbookDeserialize,
  deserializeProp: _logbookDeserializeProp,
  idName: r'id',
  indexes: {
    r'cxLogbookId': IndexSchema(
      id: -8419774140921474784,
      name: r'cxLogbookId',
      unique: false,
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
  getId: _logbookGetId,
  getLinks: _logbookGetLinks,
  attach: _logbookAttach,
  version: '3.1.0+1',
);

int _logbookEstimateSize(
  Logbook object,
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

void _logbookSerialize(
  Logbook object,
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

Logbook _logbookDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Logbook();
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

P _logbookDeserializeProp<P>(
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

Id _logbookGetId(Logbook object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logbookGetLinks(Logbook object) {
  return [];
}

void _logbookAttach(IsarCollection<dynamic> col, Id id, Logbook object) {
  object.id = id;
}

extension LogbookQueryWhereSort on QueryBuilder<Logbook, Logbook, QWhere> {
  QueryBuilder<Logbook, Logbook, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhere> anyCxLogbookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'cxLogbookId'),
      );
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhere> anyFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fltDate'),
      );
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhere> anyAcftReg() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'acftReg'),
      );
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhere> anyAcftTypeFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'acftTypeFr'),
      );
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhere> anyDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dutyStartDtmLoc'),
      );
    });
  }
}

extension LogbookQueryWhere on QueryBuilder<Logbook, Logbook, QWhereClause> {
  QueryBuilder<Logbook, Logbook, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> idBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cxLogbookId',
        value: [null],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdEqualTo(
      String? cxLogbookId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cxLogbookId',
        value: [cxLogbookId],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdNotEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdStartsWith(
      String CxLogbookIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cxLogbookId',
        lower: [CxLogbookIdPrefix],
        upper: ['$CxLogbookIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cxLogbookId',
        value: [''],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> cxLogbookIdIsNotEmpty() {
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fltDate',
        value: [null],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fltDate',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateEqualTo(
      DateTime? fltDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fltDate',
        value: [fltDate],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateNotEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> fltDateBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftReg',
        value: [null],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegEqualTo(
      String? acftReg) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftReg',
        value: [acftReg],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegNotEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegStartsWith(
      String AcftRegPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftReg',
        lower: [AcftRegPrefix],
        upper: ['$AcftRegPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftReg',
        value: [''],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftRegIsNotEmpty() {
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftTypeFr',
        value: [null],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrEqualTo(
      String? acftTypeFr) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftTypeFr',
        value: [acftTypeFr],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrNotEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrStartsWith(
      String AcftTypeFrPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acftTypeFr',
        lower: [AcftTypeFrPrefix],
        upper: ['$AcftTypeFrPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acftTypeFr',
        value: [''],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> acftTypeFrIsNotEmpty() {
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dutyStartDtmLoc',
        value: [null],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dutyStartDtmLoc',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocEqualTo(
      DateTime? dutyStartDtmLoc) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dutyStartDtmLoc',
        value: [dutyStartDtmLoc],
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocNotEqualTo(
      DateTime? dutyStartDtmLoc) {
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterWhereClause> dutyStartDtmLocBetween(
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

extension LogbookQueryFilter
    on QueryBuilder<Logbook, Logbook, QFilterCondition> {
  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acType',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acType',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acType',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acType',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftReg',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftReg',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftReg',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftRegIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftReg',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftSvcType',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftSvcType',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftSvcType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acftSvcType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftSvcTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftSvcType',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      acftSvcTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftSvcType',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftTypeCode',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      acftTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftTypeCode',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acftTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      acftTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acftTypeFr',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acftTypeFr',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acftTypeFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acftTypeFr',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> acftTypeFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acftTypeFr',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      actLandingDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actLandingDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      actLandingDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actLandingDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> actLandingDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actLandingDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> actLandingDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      actTakeoffDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actTakeoffDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      actTakeoffDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actTakeoffDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> actTakeoffDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actTakeoffDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> actTakeoffDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> airbourneGmtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'airbourneGmt',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      airbourneGmtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'airbourneGmt',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> airbourneGmtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'airbourneGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> airbourneGmtGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> airbourneGmtLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> airbourneGmtBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmLocGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmLocBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmUtcGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmUtcLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> arrDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'autoLandInd',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'autoLandInd',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'autoLandInd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'autoLandInd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> autoLandIndIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'autoLandInd',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      autoLandIndIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'autoLandInd',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blockMins',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blockMins',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockMins',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> blockMinsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'blockMins',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carrier',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'carrier',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carrier',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> carrierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carrier',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'catg',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'catg',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'catg',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> catgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'catg',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cmdrName',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cmdrName',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cmdrName',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cmdrNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cmdrName',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwBase',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwBase',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwBase',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwBaseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwBase',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwCatg',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwCatg',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwCatg',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwCatg',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwCatgSenrty',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      crwCatgSenrtyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwCatgSenrty',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crwCatgSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crwCatgSenrty',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwCatgSenrtyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwCatgSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      crwCatgSenrtyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwCatgSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crwQualSenrty',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      crwQualSenrtyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crwQualSenrty',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crwQualSenrty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crwQualSenrty',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> crwQualSenrtyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crwQualSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      crwQualSenrtyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crwQualSenrty',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cxLogbookId',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cxLogbookId',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cxLogbookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cxLogbookId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> cxLogbookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cxLogbookId',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      cxLogbookIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cxLogbookId',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deptrDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deptrDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deptrDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmLocGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmLocBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deptrDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deptrDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deptrDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmUtcGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmUtcLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> deptrDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyEndDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      dutyEndDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyEndDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmLocBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyEndDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      dutyEndDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyEndDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmUtcLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyEndDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      dutyStartDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyStartDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      dutyStartDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyStartDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyStartDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyStartDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyStartDtmLocBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      dutyStartDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyStartDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      dutyStartDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyStartDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyStartDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyStartDtmUtcLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyStartDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dutyType',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dutyType',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dutyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> dutyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dutyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fltDate',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fltDate',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fltDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltDateGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltDateLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltDateBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fltNo',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fltNo',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fltNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fltNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fltNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fopErn',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fopErn',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fopErn',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> fopErnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fopErn',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gdDutyCode',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gdDutyCode',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gdDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gdDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> gdDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gdDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> landingGmtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'landingGmt',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> landingGmtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'landingGmt',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> landingGmtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landingGmt',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> landingGmtGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> landingGmtLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> landingGmtBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noOfLanding',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noOfLanding',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noOfLanding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noOfLanding',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfLandingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfLanding',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      noOfLandingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noOfLanding',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noOfTakeoff',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noOfTakeoff',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noOfTakeoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noOfTakeoff',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> noOfTakeoffIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfTakeoff',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      noOfTakeoffIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noOfTakeoff',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sctDstn',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sctDstn',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sctDstn',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctDstnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sctDstn',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sctOri',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sctOri',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriContains(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sctOri',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> sctOriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sctOri',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simEndDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      simEndDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simEndDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simEndDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmLocGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmLocBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simEndDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      simEndDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simEndDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simEndDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmUtcGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmUtcLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simEndDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmLocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simStartDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      simStartDtmLocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simStartDtmLoc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmLocEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simStartDtmLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmLocLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmLocBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmUtcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'simStartDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      simStartDtmUtcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'simStartDtmUtc',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmUtcEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simStartDtmUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmUtcLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> simStartDtmUtcBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'speclDutyCode',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      speclDutyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'speclDutyCode',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speclDutyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speclDutyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> speclDutyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speclDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition>
      speclDutyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speclDutyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'svcCompany',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'svcCompany',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyEqualTo(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyGreaterThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyLessThan(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyBetween(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyStartsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyEndsWith(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'svcCompany',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyMatches(
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

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svcCompany',
        value: '',
      ));
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterFilterCondition> svcCompanyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'svcCompany',
        value: '',
      ));
    });
  }
}

extension LogbookQueryObject
    on QueryBuilder<Logbook, Logbook, QFilterCondition> {}

extension LogbookQueryLinks
    on QueryBuilder<Logbook, Logbook, QFilterCondition> {}

extension LogbookQuerySortBy on QueryBuilder<Logbook, Logbook, QSortBy> {
  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftReg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftRegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftSvcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftSvcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftTypeFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAcftTypeFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByActLandingDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByActLandingDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByActTakeoffDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByActTakeoffDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAirbourneGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAirbourneGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByArrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByArrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByArrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByArrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAutoLandInd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByAutoLandIndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByBlockMins() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByBlockMinsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCarrier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCarrierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCmdrName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCmdrNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwCatgSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwCatgSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwQualSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCrwQualSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCxLogbookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByCxLogbookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDeptrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDeptrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDeptrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDeptrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByDutyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByFltDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByFltNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByFltNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByFopErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByFopErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByGdDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByGdDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByLandingGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByLandingGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByNoOfLanding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByNoOfLandingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByNoOfTakeoff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortByNoOfTakeoffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySctDstn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySctDstnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySctOri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySctOriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySimStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySpeclDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySpeclDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySvcCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> sortBySvcCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.desc);
    });
  }
}

extension LogbookQuerySortThenBy
    on QueryBuilder<Logbook, Logbook, QSortThenBy> {
  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acType', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftReg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftRegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftReg', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftSvcType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftSvcTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftSvcType', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeCode', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftTypeFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAcftTypeFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acftTypeFr', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByActLandingDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByActLandingDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actLandingDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByActTakeoffDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByActTakeoffDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actTakeoffDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAirbourneGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAirbourneGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'airbourneGmt', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByArrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByArrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByArrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByArrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAutoLandInd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByAutoLandIndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoLandInd', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByBlockMins() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByBlockMinsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockMins', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCarrier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCarrierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carrier', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catg', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCmdrName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCmdrNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cmdrName', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwBase', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwCatg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwCatgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatg', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwCatgSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwCatgSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwCatgSenrty', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwQualSenrty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCrwQualSenrtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crwQualSenrty', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCxLogbookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByCxLogbookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cxLogbookId', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDeptrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDeptrDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDeptrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDeptrDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deptrDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByDutyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dutyType', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByFltDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltDate', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByFltNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByFltNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fltNo', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByFopErn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByFopErnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fopErn', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByGdDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByGdDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gdDutyCode', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByLandingGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByLandingGmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landingGmt', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByNoOfLanding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByNoOfLandingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfLanding', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByNoOfTakeoff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenByNoOfTakeoffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfTakeoff', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySctDstn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySctDstnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctDstn', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySctOri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySctOriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sctOri', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimEndDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimEndDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simEndDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimStartDtmLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmLoc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySimStartDtmUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simStartDtmUtc', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySpeclDutyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySpeclDutyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speclDutyCode', Sort.desc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySvcCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.asc);
    });
  }

  QueryBuilder<Logbook, Logbook, QAfterSortBy> thenBySvcCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svcCompany', Sort.desc);
    });
  }
}

extension LogbookQueryWhereDistinct
    on QueryBuilder<Logbook, Logbook, QDistinct> {
  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAcType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAcftReg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftReg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAcftSvcType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftSvcType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAcftTypeCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftTypeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAcftTypeFr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acftTypeFr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByActLandingDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actLandingDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByActTakeoffDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actTakeoffDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAirbourneGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'airbourneGmt');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByArrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrDtmLoc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByArrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByAutoLandInd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'autoLandInd', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByBlockMins(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blockMins', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCarrier(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carrier', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCatg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'catg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCmdrName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cmdrName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCrwBase(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwBase', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCrwCatg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwCatg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCrwCatgSenrty(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwCatgSenrty',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCrwQualSenrty(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crwQualSenrty',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByCxLogbookId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cxLogbookId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDeptrDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deptrDtmLoc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDeptrDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deptrDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDutyEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyEndDtmLoc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDutyEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyEndDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDutyStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyStartDtmLoc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDutyStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyStartDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByDutyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dutyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByFltDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fltDate');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByFltNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fltNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByFopErn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fopErn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByGdDutyCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gdDutyCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByLandingGmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'landingGmt');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByNoOfLanding(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noOfLanding', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctByNoOfTakeoff(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noOfTakeoff', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySctDstn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sctDstn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySctOri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sctOri', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySimEndDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simEndDtmLoc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySimEndDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simEndDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySimStartDtmLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simStartDtmLoc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySimStartDtmUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simStartDtmUtc');
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySpeclDutyCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speclDutyCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Logbook, Logbook, QDistinct> distinctBySvcCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'svcCompany', caseSensitive: caseSensitive);
    });
  }
}

extension LogbookQueryProperty
    on QueryBuilder<Logbook, Logbook, QQueryProperty> {
  QueryBuilder<Logbook, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> acTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acType');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> acftRegProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftReg');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> acftSvcTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftSvcType');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> acftTypeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftTypeCode');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> acftTypeFrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acftTypeFr');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations>
      actLandingDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actLandingDtmUtc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations>
      actTakeoffDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actTakeoffDtmUtc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> airbourneGmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'airbourneGmt');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> arrDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrDtmLoc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> arrDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrDtmUtc');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> autoLandIndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'autoLandInd');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> blockMinsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blockMins');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> carrierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carrier');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> catgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'catg');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> cmdrNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cmdrName');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> crwBaseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwBase');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> crwCatgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwCatg');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> crwCatgSenrtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwCatgSenrty');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> crwQualSenrtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crwQualSenrty');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> cxLogbookIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cxLogbookId');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> deptrDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deptrDtmLoc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> deptrDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deptrDtmUtc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> dutyEndDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyEndDtmLoc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> dutyEndDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyEndDtmUtc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> dutyStartDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyStartDtmLoc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> dutyStartDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyStartDtmUtc');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> dutyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dutyType');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> fltDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fltDate');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> fltNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fltNo');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> fopErnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fopErn');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> gdDutyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gdDutyCode');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> landingGmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'landingGmt');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> noOfLandingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noOfLanding');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> noOfTakeoffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noOfTakeoff');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> sctDstnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sctDstn');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> sctOriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sctOri');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> simEndDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simEndDtmLoc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> simEndDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simEndDtmUtc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> simStartDtmLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simStartDtmLoc');
    });
  }

  QueryBuilder<Logbook, DateTime?, QQueryOperations> simStartDtmUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simStartDtmUtc');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> speclDutyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speclDutyCode');
    });
  }

  QueryBuilder<Logbook, String?, QQueryOperations> svcCompanyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'svcCompany');
    });
  }
}
