import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BordaRecord extends FirestoreRecord {
  BordaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('borda');

  static Stream<BordaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BordaRecord.fromSnapshot(s));

  static Future<BordaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BordaRecord.fromSnapshot(s));

  static BordaRecord fromSnapshot(DocumentSnapshot snapshot) => BordaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BordaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BordaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BordaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BordaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBordaRecordData({
  String? nome,
  double? preco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'preco': preco,
    }.withoutNulls,
  );

  return firestoreData;
}

class BordaRecordDocumentEquality implements Equality<BordaRecord> {
  const BordaRecordDocumentEquality();

  @override
  bool equals(BordaRecord? e1, BordaRecord? e2) {
    return e1?.nome == e2?.nome && e1?.preco == e2?.preco;
  }

  @override
  int hash(BordaRecord? e) => const ListEquality().hash([e?.nome, e?.preco]);

  @override
  bool isValidKey(Object? o) => o is BordaRecord;
}
