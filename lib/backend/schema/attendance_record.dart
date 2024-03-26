import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendanceRecord extends FirestoreRecord {
  AttendanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "punch_in" field.
  DateTime? _punchIn;
  DateTime? get punchIn => _punchIn;
  bool hasPunchIn() => _punchIn != null;

  // "punch_out" field.
  DateTime? _punchOut;
  DateTime? get punchOut => _punchOut;
  bool hasPunchOut() => _punchOut != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _punchIn = snapshotData['punch_in'] as DateTime?;
    _punchOut = snapshotData['punch_out'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attendance');

  static Stream<AttendanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttendanceRecord.fromSnapshot(s));

  static Future<AttendanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttendanceRecord.fromSnapshot(s));

  static AttendanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttendanceRecordData({
  DateTime? punchIn,
  DateTime? punchOut,
  String? email,
  String? uid,
  String? photoUrl,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'punch_in': punchIn,
      'punch_out': punchOut,
      'email': email,
      'uid': uid,
      'photo_url': photoUrl,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttendanceRecordDocumentEquality implements Equality<AttendanceRecord> {
  const AttendanceRecordDocumentEquality();

  @override
  bool equals(AttendanceRecord? e1, AttendanceRecord? e2) {
    return e1?.punchIn == e2?.punchIn &&
        e1?.punchOut == e2?.punchOut &&
        e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(AttendanceRecord? e) => const ListEquality().hash(
      [e?.punchIn, e?.punchOut, e?.email, e?.uid, e?.photoUrl, e?.displayName]);

  @override
  bool isValidKey(Object? o) => o is AttendanceRecord;
}
