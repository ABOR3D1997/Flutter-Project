import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rezepte_record.g.dart';

abstract class RezepteRecord
    implements Built<RezepteRecord, RezepteRecordBuilder> {
  static Serializer<RezepteRecord> get serializer => _$rezepteRecordSerializer;

  @nullable
  DocumentReference get rezept;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RezepteRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rezepte');

  static Stream<RezepteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RezepteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RezepteRecord._();
  factory RezepteRecord([void Function(RezepteRecordBuilder) updates]) =
      _$RezepteRecord;

  static RezepteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRezepteRecordData({
  DocumentReference rezept,
}) =>
    serializers.toFirestore(
        RezepteRecord.serializer, RezepteRecord((r) => r..rezept = rezept));
