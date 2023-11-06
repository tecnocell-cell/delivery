import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MesaRecord extends FirestoreRecord {
  MesaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nemero" field.
  int? _nemero;
  int get nemero => _nemero ?? 0;
  bool hasNemero() => _nemero != null;

  // "idAtendente" field.
  String? _idAtendente;
  String get idAtendente => _idAtendente ?? '';
  bool hasIdAtendente() => _idAtendente != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _nemero = castToType<int>(snapshotData['nemero']);
    _idAtendente = snapshotData['idAtendente'] as String?;
    _status = snapshotData['status'] as bool?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mesa');

  static Stream<MesaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MesaRecord.fromSnapshot(s));

  static Future<MesaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MesaRecord.fromSnapshot(s));

  static MesaRecord fromSnapshot(DocumentSnapshot snapshot) => MesaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MesaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MesaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MesaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MesaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMesaRecordData({
  int? nemero,
  String? idAtendente,
  bool? status,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nemero': nemero,
      'idAtendente': idAtendente,
      'status': status,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class MesaRecordDocumentEquality implements Equality<MesaRecord> {
  const MesaRecordDocumentEquality();

  @override
  bool equals(MesaRecord? e1, MesaRecord? e2) {
    return e1?.nemero == e2?.nemero &&
        e1?.idAtendente == e2?.idAtendente &&
        e1?.status == e2?.status &&
        e1?.img == e2?.img;
  }

  @override
  int hash(MesaRecord? e) =>
      const ListEquality().hash([e?.nemero, e?.idAtendente, e?.status, e?.img]);

  @override
  bool isValidKey(Object? o) => o is MesaRecord;
}
