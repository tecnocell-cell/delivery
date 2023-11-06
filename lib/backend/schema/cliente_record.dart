import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "telefone" field.
  double? _telefone;
  double get telefone => _telefone ?? 0.0;
  bool hasTelefone() => _telefone != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _telefone = castToType<double>(snapshotData['telefone']);
    _endereco = snapshotData['endereco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  String? nome,
  double? telefone,
  String? endereco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'telefone': telefone,
      'endereco': endereco,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.telefone == e2?.telefone &&
        e1?.endereco == e2?.endereco;
  }

  @override
  int hash(ClienteRecord? e) =>
      const ListEquality().hash([e?.nome, e?.telefone, e?.endereco]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
