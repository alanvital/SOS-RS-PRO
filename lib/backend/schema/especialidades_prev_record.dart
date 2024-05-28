import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EspecialidadesPrevRecord extends FirestoreRecord {
  EspecialidadesPrevRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "auxilioinss" field.
  bool? _auxilioinss;
  bool get auxilioinss => _auxilioinss ?? false;
  bool hasAuxilioinss() => _auxilioinss != null;

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _auxilioinss = snapshotData['auxilioinss'] as bool?;
    _auxilioemergencial = snapshotData['auxilioemergencial'] as bool?;
    _negociacaocomempresasdeseguro =
        snapshotData['negociacaocomempresasdeseguro'] as bool?;
    _orientacaosobredireitosedeveres =
        snapshotData['orientacaosobredireitosedeveres'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('especialidadesPrev')
          : FirebaseFirestore.instance.collectionGroup('especialidadesPrev');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('especialidadesPrev').doc(id);

  static Stream<EspecialidadesPrevRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EspecialidadesPrevRecord.fromSnapshot(s));

  static Future<EspecialidadesPrevRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EspecialidadesPrevRecord.fromSnapshot(s));

  static EspecialidadesPrevRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EspecialidadesPrevRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EspecialidadesPrevRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EspecialidadesPrevRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EspecialidadesPrevRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EspecialidadesPrevRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEspecialidadesPrevRecordData({
  DocumentReference? userRef,
  bool? auxilioinss,
  bool? auxilioemergencial,
  bool? negociacaocomempresasdeseguro,
  bool? orientacaosobredireitosedeveres,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'auxilioinss': auxilioinss,
      'auxilioemergencial': auxilioemergencial,
      'negociacaocomempresasdeseguro': negociacaocomempresasdeseguro,
      'orientacaosobredireitosedeveres': orientacaosobredireitosedeveres,
    }.withoutNulls,
  );

  return firestoreData;
}

class EspecialidadesPrevRecordDocumentEquality
    implements Equality<EspecialidadesPrevRecord> {
  const EspecialidadesPrevRecordDocumentEquality();

  @override
  bool equals(EspecialidadesPrevRecord? e1, EspecialidadesPrevRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.auxilioinss == e2?.auxilioinss &&
        e1?.auxilioemergencial == e2?.auxilioemergencial &&
        e1?.negociacaocomempresasdeseguro ==
            e2?.negociacaocomempresasdeseguro &&
        e1?.orientacaosobredireitosedeveres ==
            e2?.orientacaosobredireitosedeveres;
  }

  @override
  int hash(EspecialidadesPrevRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.auxilioinss,
        e?.auxilioemergencial,
        e?.negociacaocomempresasdeseguro,
        e?.orientacaosobredireitosedeveres
      ]);

  @override
  bool isValidKey(Object? o) => o is EspecialidadesPrevRecord;
}
