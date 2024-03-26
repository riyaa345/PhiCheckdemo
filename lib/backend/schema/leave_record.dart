import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveRecord extends FirestoreRecord {
  LeaveRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "startdate" field.
  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  bool hasStartdate() => _startdate != null;

  // "enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "leavetitle" field.
  String? _leavetitle;
  String get leavetitle => _leavetitle ?? '';
  bool hasLeavetitle() => _leavetitle != null;

  // "leavestatus" field.
  String? _leavestatus;
  String get leavestatus => _leavestatus ?? '';
  bool hasLeavestatus() => _leavestatus != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _startdate = snapshotData['startdate'] as DateTime?;
    _enddate = snapshotData['enddate'] as DateTime?;
    _reason = snapshotData['reason'] as String?;
    _userid = snapshotData['userid'] as String?;
    _username = snapshotData['username'] as String?;
    _email = snapshotData['email'] as String?;
    _leavetitle = snapshotData['leavetitle'] as String?;
    _leavestatus = snapshotData['leavestatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leave');

  static Stream<LeaveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeaveRecord.fromSnapshot(s));

  static Future<LeaveRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeaveRecord.fromSnapshot(s));

  static LeaveRecord fromSnapshot(DocumentSnapshot snapshot) => LeaveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeaveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeaveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeaveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeaveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeaveRecordData({
  String? uid,
  DateTime? startdate,
  DateTime? enddate,
  String? reason,
  String? userid,
  String? username,
  String? email,
  String? leavetitle,
  String? leavestatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'startdate': startdate,
      'enddate': enddate,
      'reason': reason,
      'userid': userid,
      'username': username,
      'email': email,
      'leavetitle': leavetitle,
      'leavestatus': leavestatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeaveRecordDocumentEquality implements Equality<LeaveRecord> {
  const LeaveRecordDocumentEquality();

  @override
  bool equals(LeaveRecord? e1, LeaveRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.startdate == e2?.startdate &&
        e1?.enddate == e2?.enddate &&
        e1?.reason == e2?.reason &&
        e1?.userid == e2?.userid &&
        e1?.username == e2?.username &&
        e1?.email == e2?.email &&
        e1?.leavetitle == e2?.leavetitle &&
        e1?.leavestatus == e2?.leavestatus;
  }

  @override
  int hash(LeaveRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.startdate,
        e?.enddate,
        e?.reason,
        e?.userid,
        e?.username,
        e?.email,
        e?.leavetitle,
        e?.leavestatus
      ]);

  @override
  bool isValidKey(Object? o) => o is LeaveRecord;
}
