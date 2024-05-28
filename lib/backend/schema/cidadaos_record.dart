import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CidadaosRecord extends FirestoreRecord {
  CidadaosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "nascimento" field.
  String? _nascimento;
  String get nascimento => _nascimento ?? '';
  bool hasNascimento() => _nascimento != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _nascimento = snapshotData['nascimento'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _email = snapshotData['email'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cidadaos');

  static Stream<CidadaosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CidadaosRecord.fromSnapshot(s));

  static Future<CidadaosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CidadaosRecord.fromSnapshot(s));

  static CidadaosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CidadaosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CidadaosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CidadaosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CidadaosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CidadaosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCidadaosRecordData({
  String? nome,
  String? sexo,
  String? nascimento,
  String? descricao,
  String? telefone,
  String? email,
  DocumentReference? userRef,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'sexo': sexo,
      'nascimento': nascimento,
      'descricao': descricao,
      'telefone': telefone,
      'email': email,
      'userRef': userRef,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CidadaosRecordDocumentEquality implements Equality<CidadaosRecord> {
  const CidadaosRecordDocumentEquality();

  @override
  bool equals(CidadaosRecord? e1, CidadaosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.sexo == e2?.sexo &&
        e1?.nascimento == e2?.nascimento &&
        e1?.descricao == e2?.descricao &&
        e1?.telefone == e2?.telefone &&
        e1?.email == e2?.email &&
        e1?.userRef == e2?.userRef &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(CidadaosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.sexo,
        e?.nascimento,
        e?.descricao,
        e?.telefone,
        e?.email,
        e?.userRef,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is CidadaosRecord;
}
