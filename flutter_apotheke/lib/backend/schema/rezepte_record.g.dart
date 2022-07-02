// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rezepte_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RezepteRecord> _$rezepteRecordSerializer =
    new _$RezepteRecordSerializer();

class _$RezepteRecordSerializer implements StructuredSerializer<RezepteRecord> {
  @override
  final Iterable<Type> types = const [RezepteRecord, _$RezepteRecord];
  @override
  final String wireName = 'RezepteRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RezepteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.rezept;
    if (value != null) {
      result
        ..add('rezept')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RezepteRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RezepteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'rezept':
          result.rezept = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RezepteRecord extends RezepteRecord {
  @override
  final DocumentReference<Object> rezept;
  @override
  final DocumentReference<Object> reference;

  factory _$RezepteRecord([void Function(RezepteRecordBuilder) updates]) =>
      (new RezepteRecordBuilder()..update(updates)).build();

  _$RezepteRecord._({this.rezept, this.reference}) : super._();

  @override
  RezepteRecord rebuild(void Function(RezepteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RezepteRecordBuilder toBuilder() => new RezepteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RezepteRecord &&
        rezept == other.rezept &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rezept.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RezepteRecord')
          ..add('rezept', rezept)
          ..add('reference', reference))
        .toString();
  }
}

class RezepteRecordBuilder
    implements Builder<RezepteRecord, RezepteRecordBuilder> {
  _$RezepteRecord _$v;

  DocumentReference<Object> _rezept;
  DocumentReference<Object> get rezept => _$this._rezept;
  set rezept(DocumentReference<Object> rezept) => _$this._rezept = rezept;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RezepteRecordBuilder() {
    RezepteRecord._initializeBuilder(this);
  }

  RezepteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rezept = $v.rezept;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RezepteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RezepteRecord;
  }

  @override
  void update(void Function(RezepteRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RezepteRecord build() {
    final _$result =
        _$v ?? new _$RezepteRecord._(rezept: rezept, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
