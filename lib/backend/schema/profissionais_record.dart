import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ProfissionaisRecord extends FirestoreRecord {
  ProfissionaisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Atualizacao" field.
  DateTime? _atualizacao;
  DateTime? get atualizacao => _atualizacao;
  bool hasAtualizacao() => _atualizacao != null;

  // "agenda" field.
  String? _agenda;
  String get agenda => _agenda ?? '';
  bool hasAgenda() => _agenda != null;

  // "escritorio" field.
  String? _escritorio;
  String get escritorio => _escritorio ?? '';
  bool hasEscritorio() => _escritorio != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "profissao" field.
  String? _profissao;
  String get profissao => _profissao ?? '';
  bool hasProfissao() => _profissao != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "auxilioemergencial" field.
  bool? _auxilioemergencial;
  bool get auxilioemergencial => _auxilioemergencial ?? false;
  bool hasAuxilioemergencial() => _auxilioemergencial != null;

  // "negociacaocomempresasdeseguro" field.
  bool? _negociacaocomempresasdeseguro;
  bool get negociacaocomempresasdeseguro =>
      _negociacaocomempresasdeseguro ?? false;
  bool hasNegociacaocomempresasdeseguro() =>
      _negociacaocomempresasdeseguro != null;

  // "orientacaosobredireitosedeveres" field.
  bool? _orientacaosobredireitosedeveres;
  bool get orientacaosobredireitosedeveres =>
      _orientacaosobredireitosedeveres ?? false;
  bool hasOrientacaosobredireitosedeveres() =>
      _orientacaosobredireitosedeveres != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "especialidades" field.
  String? _especialidades;
  String get especialidades => _especialidades ?? '';
  bool hasEspecialidades() => _especialidades != null;

  // "tipocadastro" field.
  bool? _tipocadastro;
  bool get tipocadastro => _tipocadastro ?? false;
  bool hasTipocadastro() => _tipocadastro != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "nascimento" field.
  String? _nascimento;
  String get nascimento => _nascimento ?? '';
  bool hasNascimento() => _nascimento != null;

  // "registroprofissional" field.
  String? _registroprofissional;
  String get registroprofissional => _registroprofissional ?? '';
  bool hasRegistroprofissional() => _registroprofissional != null;

  void _initializeFields() {
    _atualizacao = snapshotData['Atualizacao'] as DateTime?;
    _agenda = snapshotData['agenda'] as String?;
    _escritorio = snapshotData['escritorio'] as String?;
    _foto = snapshotData['foto'] as String?;
    _nome = snapshotData['nome'] as String?;
    _profissao = snapshotData['profissao'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _auxilioemergencial = snapshotData['auxilioemergencial'] as bool?;
    _negociacaocomempresasdeseguro =
        snapshotData['negociacaocomempresasdeseguro'] as bool?;
    _orientacaosobredireitosedeveres =
        snapshotData['orientacaosobredireitosedeveres'] as bool?;
    _descricao = snapshotData['descricao'] as String?;
    _email = snapshotData['email'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _especialidades = snapshotData['especialidades'] as String?;
    _tipocadastro = snapshotData['tipocadastro'] as bool?;
    _sexo = snapshotData['sexo'] as String?;
    _nascimento = snapshotData['nascimento'] as String?;
    _registroprofissional = snapshotData['registroprofissional'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Profissionais');

  static Stream<ProfissionaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfissionaisRecord.fromSnapshot(s));

  static Future<ProfissionaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfissionaisRecord.fromSnapshot(s));

  static ProfissionaisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfissionaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfissionaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfissionaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfissionaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfissionaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfissionaisRecordData({
  DateTime? atualizacao,
  String? agenda,
  String? escritorio,
  String? foto,
  String? nome,
  String? profissao,
  String? telefone,
  bool? auxilioemergencial,
  bool? negociacaocomempresasdeseguro,
  bool? orientacaosobredireitosedeveres,
  String? descricao,
  String? email,
  DocumentReference? userRef,
  String? especialidades,
  bool? tipocadastro,
  String? sexo,
  String? nascimento,
  String? registroprofissional,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Atualizacao': atualizacao,
      'agenda': agenda,
      'escritorio': escritorio,
      'foto': foto,
      'nome': nome,
      'profissao': profissao,
      'telefone': telefone,
      'auxilioemergencial': auxilioemergencial,
      'negociacaocomempresasdeseguro': negociacaocomempresasdeseguro,
      'orientacaosobredireitosedeveres': orientacaosobredireitosedeveres,
      'descricao': descricao,
      'email': email,
      'userRef': userRef,
      'especialidades': especialidades,
      'tipocadastro': tipocadastro,
      'sexo': sexo,
      'nascimento': nascimento,
      'registroprofissional': registroprofissional,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfissionaisRecordDocumentEquality
    implements Equality<ProfissionaisRecord> {
  const ProfissionaisRecordDocumentEquality();

  @override
  bool equals(ProfissionaisRecord? e1, ProfissionaisRecord? e2) {
    return e1?.atualizacao == e2?.atualizacao &&
        e1?.agenda == e2?.agenda &&
        e1?.escritorio == e2?.escritorio &&
        e1?.foto == e2?.foto &&
        e1?.nome == e2?.nome &&
        e1?.profissao == e2?.profissao &&
        e1?.telefone == e2?.telefone &&
        e1?.auxilioemergencial == e2?.auxilioemergencial &&
        e1?.negociacaocomempresasdeseguro ==
            e2?.negociacaocomempresasdeseguro &&
        e1?.orientacaosobredireitosedeveres ==
            e2?.orientacaosobredireitosedeveres &&
        e1?.descricao == e2?.descricao &&
        e1?.email == e2?.email &&
        e1?.userRef == e2?.userRef &&
        e1?.especialidades == e2?.especialidades &&
        e1?.tipocadastro == e2?.tipocadastro &&
        e1?.sexo == e2?.sexo &&
        e1?.nascimento == e2?.nascimento &&
        e1?.registroprofissional == e2?.registroprofissional;
  }

  @override
  int hash(ProfissionaisRecord? e) => const ListEquality().hash([
        e?.atualizacao,
        e?.agenda,
        e?.escritorio,
        e?.foto,
        e?.nome,
        e?.profissao,
        e?.telefone,
        e?.auxilioemergencial,
        e?.negociacaocomempresasdeseguro,
        e?.orientacaosobredireitosedeveres,
        e?.descricao,
        e?.email,
        e?.userRef,
        e?.especialidades,
        e?.tipocadastro,
        e?.sexo,
        e?.nascimento,
        e?.registroprofissional
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfissionaisRecord;
}
