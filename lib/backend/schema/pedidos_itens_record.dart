import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosItensRecord extends FirestoreRecord {
  PedidosItensRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idPedido" field.
  String? _idPedido;
  String get idPedido => _idPedido ?? '';
  bool hasIdPedido() => _idPedido != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "quant" field.
  int? _quant;
  int get quant => _quant ?? 0;
  bool hasQuant() => _quant != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  void _initializeFields() {
    _idPedido = snapshotData['idPedido'] as String?;
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _quant = castToType<int>(snapshotData['quant']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _obs = snapshotData['obs'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidosItens');

  static Stream<PedidosItensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosItensRecord.fromSnapshot(s));

  static Future<PedidosItensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosItensRecord.fromSnapshot(s));

  static PedidosItensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosItensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosItensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosItensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosItensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosItensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosItensRecordData({
  String? idPedido,
  String? nome,
  double? preco,
  int? quant,
  double? subTotal,
  String? obs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idPedido': idPedido,
      'nome': nome,
      'preco': preco,
      'quant': quant,
      'subTotal': subTotal,
      'obs': obs,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosItensRecordDocumentEquality
    implements Equality<PedidosItensRecord> {
  const PedidosItensRecordDocumentEquality();

  @override
  bool equals(PedidosItensRecord? e1, PedidosItensRecord? e2) {
    return e1?.idPedido == e2?.idPedido &&
        e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.quant == e2?.quant &&
        e1?.subTotal == e2?.subTotal &&
        e1?.obs == e2?.obs;
  }

  @override
  int hash(PedidosItensRecord? e) => const ListEquality()
      .hash([e?.idPedido, e?.nome, e?.preco, e?.quant, e?.subTotal, e?.obs]);

  @override
  bool isValidKey(Object? o) => o is PedidosItensRecord;
}
