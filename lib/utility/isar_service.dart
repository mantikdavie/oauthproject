import 'package:isar/isar.dart';
import 'package:oauthproject/collection/collection.dart';
import 'package:oauthproject/collection/duty_record.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [FlightRecordSchema, CrewMemberSchema, DutyRecordSchema],
      directory: dir.path,
    );
  }

  Future<void> saveFlightRecord(FlightRecord flightRecord) async {
    final isar = await db;
    isar.writeTxn(() => isar.flightRecords.put(flightRecord));
  }

  Future<List<FlightRecord>> getAllFlightRecords() async {
    final isar = await db;
    return await isar.flightRecords.where().findAll();
  }

  Future<List<FlightRecord>> getFlightsByCrewMember(String crewMemberId) async {
    final isar = await db;
    return await isar.flightRecords
        .filter()
        .crewMemberIdsElementEqualTo(crewMemberId)
        .findAll();
  }

  // Add more CRUD operations as needed

  Future<void> addPseudoRecord() async {
    final isar = await db;
    final pseudoFlight = FlightRecord()
      ..flightNumber = 'CX9999'
      ..flightDate = DateTime.now()
      ..departurePort = 'HKG'
      ..arrivalPort = 'LAX'
      ..crewMemberIds = ['crew1', 'crew2'];

    await isar.writeTxn(() async {
      await isar.flightRecords.put(pseudoFlight);
    });
  }

  Future<void> importLogbookData(List<Map<String, dynamic>> jsonData) async {
    final isar = await db;

    await isar.writeTxn(() async {
      for (var entry in jsonData) {
        // Check if the record already exists
        final existingRecord = await isar.dutyRecords
            .filter()
            .cxLogbookIdEqualTo(entry['_id'])
            .findFirst();

        if (existingRecord == null) {
          final dutyRecord = DutyRecord()
            ..cxLogbookId = entry['_id']
            ..fopErn = entry['fopErn']
            ..acftSvcType = entry['acftSvcType']
            ..acftTypeCode = entry['acftTypeCode']
            ..crwBase = entry['crwBase']
            ..crwCatg = entry['crwCatg']
            ..crwCatgSenrty = entry['crwCatgSenrty']
            ..crwQualSenrty = entry['crwQualSenrty']
            ..speclDutyCode = entry['speclDutyCode']
            ..svcCompany = entry['svcCompany'];

          if (entry['dutyType'] == 'SIM') {
            dutyRecord
              ..dutyType = entry['dutyType']
              ..dutyStartDtmLoc = entry['dutyStartDtmLoc'] != null
                  ? DateTime.parse(entry['dutyStartDtmLoc'])
                  : null
              ..dutyEndDtmLoc = entry['dutyEndDtmLoc'] != null
                  ? DateTime.parse(entry['dutyEndDtmLoc'])
                  : null
              ..dutyEndDtmUtc = entry['dutyEndDtmUtc'] != null
                  ? DateTime.parse(entry['dutyEndDtmUtc'])
                  : null
              ..dutyStartDtmUtc = entry['dutyStartDtmUtc'] != null
                  ? DateTime.parse(entry['dutyStartDtmUtc'])
                  : null
              ..gdDutyCode = entry['gdDutyCode']
              ..simEndDtmLoc = entry['simEndDtmLoc'] != null
                  ? DateTime.parse(entry['simEndDtmLoc'])
                  : null
              ..simEndDtmUtc = entry['simEndDtmUtc'] != null
                  ? DateTime.parse(entry['simEndDtmUtc'])
                  : null
              ..simStartDtmLoc = entry['simStartDtmLoc'] != null
                  ? DateTime.parse(entry['simStartDtmLoc'])
                  : null
              ..simStartDtmUtc = entry['simStartDtmUtc'] != null
                  ? DateTime.parse(entry['simStartDtmUtc'])
                  : null
              ..acType = entry['acType']
              ..catg = entry['catg'];
          } else {
            dutyRecord
              ..carrier = entry['carrier']
              ..fltDate = entry['fltDate'] != null
                  ? DateTime.parse(entry['fltDate'])
                  : null
              ..fltNo = entry['fltNo']
              ..sctDstn = entry['sctDstn']
              ..sctOri = entry['sctOri']
              ..autoLandInd = entry['autoLandInd']
              ..noOfLanding = entry['noOfLanding']
              ..noOfTakeoff = entry['noOfTakeoff']
              ..acftReg = entry['acftReg']
              ..acftTypeFr = entry['acftTypeFr']
              ..actLandingDtmUtc = entry['actLandingDtmUtc'] != null
                  ? DateTime.parse(entry['actLandingDtmUtc'])
                  : null
              ..actTakeoffDtmUtc = entry['actTakeoffDtmUtc'] != null
                  ? DateTime.parse(entry['actTakeoffDtmUtc'])
                  : null
              ..arrDtmLoc = entry['arrDtmLoc'] != null
                  ? DateTime.parse(entry['arrDtmLoc'])
                  : null
              ..arrDtmUtc = entry['arrDtmUtc'] != null
                  ? DateTime.parse(entry['arrDtmUtc'])
                  : null
              ..blockMins = entry['blockMins']
              ..cmdrName = entry['cmdrName']
              ..deptrDtmLoc = entry['deptrDtmLoc'] != null
                  ? DateTime.parse(entry['deptrDtmLoc'])
                  : null
              ..deptrDtmUtc = entry['deptrDtmUtc'] != null
                  ? DateTime.parse(entry['deptrDtmUtc'])
                  : null
              ..airbourneGmt = entry['airbourneGmt'] != null
                  ? DateTime.parse(entry['airbourneGmt'])
                  : null
              ..landingGmt = entry['landingGmt'] != null
                  ? DateTime.parse(entry['landingGmt'])
                  : null;
          }

          await isar.dutyRecords.put(dutyRecord);
        }
        // If the record exists, you can choose to skip it or update it here
      }
    });
  }

  Future<List<int>> getAvailableYears() async {
    final isar = await db;
    final oldestRecord = await isar.dutyRecords
        .where()
        .fltDateIsNotNull()
        .sortByFltDate()
        .findFirst();

    int startYear = oldestRecord?.fltDate?.year ?? DateTime.now().year;
    int currentYear = DateTime.now().year;

    List<int> years = List.generate(
        currentYear - startYear + 1, (index) => currentYear - index);

    return years;
  }

  Stream<Map<int, List<DutyRecord>>> watchDutyRecordsByYearGroupedByMonth(
      int year) async* {
    final isar = await db;
    yield* isar.dutyRecords
        .filter()
        .group((q) => q
            .fltDateBetween(
              DateTime(year, 1, 1),
              DateTime(year, 12, 31, 23, 59, 59),
            )
            .or()
            .dutyStartDtmLocBetween(
              DateTime(year, 1, 1),
              DateTime(year, 12, 31, 23, 59, 59),
            ))
        .sortByFltDateDesc()
        .thenByDutyStartDtmLocDesc()
        .watch(fireImmediately: true)
        .map((records) {
      final groupedRecords = <int, List<DutyRecord>>{};
      for (var record in records) {
        final date = record.fltDate ?? record.dutyStartDtmLoc;
        if (date != null) {
          final month = date.month;
          groupedRecords.putIfAbsent(month, () => []).add(record);
        }
      }
      groupedRecords.forEach((month, records) {
        records.sort((a, b) {
          final dateA = a.fltDate ?? a.dutyStartDtmLoc;
          final dateB = b.fltDate ?? b.dutyStartDtmLoc;
          return dateB?.compareTo(dateA ?? DateTime(0)) ?? 0;
        });
      });
      return groupedRecords;
    });
  }

  Stream<List<DutyRecord>> watchDutyRecords() async* {
    final isar = await db;
    yield* isar.dutyRecords.where().watch(fireImmediately: true);
  }

  Future<List<DutyRecord>> getDutyRecordsByYear(int year) async {
    final isar = await db;
    return isar.dutyRecords
        .filter()
        .fltDateBetween(
          DateTime(year, 1, 1),
          DateTime(year, 12, 31, 23, 59, 59),
        )
        .or()
        .dutyStartDtmLocBetween(
          DateTime(year, 1, 1),
          DateTime(year, 12, 31, 23, 59, 59),
        )
        .sortByFltDateDesc()
        .findAll();
  }
}
