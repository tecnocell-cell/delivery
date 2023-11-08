import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TamPizzasRecord extends FirestoreRecord {
  TamPizzasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tamanho" field.
  String? _tamanho;
  String get tamanho => _tamanho ?? '';
  bool hasTamanho() => _tamanho != null;

  // "descri" field.
  String? _descri;
  String get descri => _descri ?? '';
  bool hasDescri() => _descri != null;

  // "qmsabores" field.
  int? _qmsabores;
  int get qmsabores => _qmsabores ?? 0;
  bool hasQmsabores() => _qmsabores != null;

  // "classifica" field.
  int? _classifica;
  int get classifica => _classifica ?? 0;
  bool hasClassifica() => _classifica != null;

  // "sug" field.
  double? _sug;
  double get sug => _sug ?? 0.0;
  bool hasSug() => _sug != null;

  void _initializeFields() {
    _tamanho = snapshotData['tamanho'] as String?;
    _descri = snapshotData['descri'] as String?;
    _qmsabores = castToType<int>(snapshotData['qmsabores']);
    _classifica = castToType<int>(snapshotData['classifica']);
    _sug = castToType<double>(snapshotData['sug']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tamPizzas');

  static Stream<TamPizzasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TamPizzasRecord.fromSnapshot(s));

  static Future<TamPizzasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TamPizzasRecord.fromSnapshot(s));

  static TamPizzasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TamPizzasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TamPizzasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TamPizzasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TamPizzasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TamPizzasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTamPizzasRecordData({
  String? tamanho,
  String? descri,
  int? qmsabores,
  int? classifica,
  double? sug,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tamanho': tamanho,
      'descri': descri,
      'qmsabores': qmsabores,
      'classifica': classifica,
      'sug': sug,
    }.withoutNulls,
  );

  return firestoreData;
}

class TamPizzasRecordDocumentEquality implements Equality<TamPizzasRecord> {
  const TamPizzasRecordDocumentEquality();

  @override
  bool equals(TamPizzasRecord? e1, TamPizzasRecord? e2) {
    return e1?.tamanho == e2?.tamanho &&
        e1?.descri == e2?.descri &&
        e1?.qmsabores == e2?.qmsabores &&
        e1?.classifica == e2?.classifica &&
        e1?.sug == e2?.sug;
  }

  @override
  int hash(TamPizzasRecord? e) => const ListEquality()
      .hash([e?.tamanho, e?.descri, e?.qmsabores, e?.classifica, e?.sug]);

  @override
  bool isValidKey(Object? o) => o is TamPizzasRecord;
}
