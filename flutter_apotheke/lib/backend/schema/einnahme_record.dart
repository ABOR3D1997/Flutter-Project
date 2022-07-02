import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'einnahme_record.g.dart';

abstract class EinnahmeRecord
    implements Built<EinnahmeRecord, EinnahmeRecordBuilder> {
  static Serializer<EinnahmeRecord> get serializer =>
      _$einnahmeRecordSerializer;

  @nullable
  String get medikamment;

  @nullable
  int get anzbillen;

  @nullable
  String get beschreibung;

  @nullable
  BuiltList<bool> get check;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EinnahmeRecordBuilder builder) => builder
    ..medikamment = ''
    ..anzbillen = 0
    ..beschreibung = ''
    ..check = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('einnahme');

  static Stream<EinnahmeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EinnahmeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EinnahmeRecord._();
  factory EinnahmeRecord([void Function(EinnahmeRecordBuilder) updates]) =
      _$EinnahmeRecord;

  static EinnahmeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEinnahmeRecordData({
  String medikamment,
  int anzbillen,
  String beschreibung,
}) =>
    serializers.toFirestore(
        EinnahmeRecord.serializer,
        EinnahmeRecord((e) => e
          ..medikamment = medikamment
          ..anzbillen = anzbillen
          ..beschreibung = beschreibung
          ..check = null));
