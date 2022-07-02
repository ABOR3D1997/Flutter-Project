import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bstellung_record.g.dart';

abstract class BstellungRecord
    implements Built<BstellungRecord, BstellungRecordBuilder> {
  static Serializer<BstellungRecord> get serializer =>
      _$bstellungRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Preis')
  double get preis;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'Beschreibung')
  String get beschreibung;

  @nullable
  String get photo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BstellungRecordBuilder builder) => builder
    ..preis = 0.0
    ..name = ''
    ..beschreibung = ''
    ..photo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bstellung');

  static Stream<BstellungRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BstellungRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BstellungRecord._();
  factory BstellungRecord([void Function(BstellungRecordBuilder) updates]) =
      _$BstellungRecord;

  static BstellungRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBstellungRecordData({
  double preis,
  String name,
  String beschreibung,
  String photo,
}) =>
    serializers.toFirestore(
        BstellungRecord.serializer,
        BstellungRecord((b) => b
          ..preis = preis
          ..name = name
          ..beschreibung = beschreibung
          ..photo = photo));
