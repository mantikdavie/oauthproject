import 'package:isar/isar.dart';

part 'duty_record.g.dart';

@collection
class DutyRecord {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  String? cxLogbookId;

  String? carrier;
  @Index(type: IndexType.value)
  DateTime? fltDate;
  String? fltNo;
  String? fopErn;
  String? sctDstn;
  String? sctOri;
  String? acftSvcType;
  String? acftTypeCode;
  String? autoLandInd;
  String? crwBase;
  String? crwCatg;
  String? crwCatgSenrty;
  String? crwQualSenrty;
  String? noOfLanding;
  String? noOfTakeoff;
  String? speclDutyCode;
  String? svcCompany;
  @Index(type: IndexType.value)
  String? acftReg;
  @Index(type: IndexType.value)
  String? acftTypeFr;
  DateTime? actLandingDtmUtc;
  DateTime? actTakeoffDtmUtc;
  DateTime? arrDtmLoc;
  DateTime? arrDtmUtc;
  String? blockMins;
  String? cmdrName;
  DateTime? deptrDtmLoc;
  DateTime? deptrDtmUtc;
  DateTime? airbourneGmt;
  DateTime? landingGmt;

  // Simulator duty fields
  @Index(type: IndexType.value)
  DateTime? dutyStartDtmLoc;
  DateTime? dutyEndDtmLoc;
  DateTime? dutyEndDtmUtc;
  DateTime? dutyStartDtmUtc;
  String? dutyType;
  String? gdDutyCode;
  DateTime? simEndDtmLoc;
  DateTime? simEndDtmUtc;
  DateTime? simStartDtmLoc;
  DateTime? simStartDtmUtc;
  String? acType;
  String? catg;
}
