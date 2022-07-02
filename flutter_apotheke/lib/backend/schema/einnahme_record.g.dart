// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'einnahme_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EinnahmeRecord> _$einnahmeRecordSerializer =
    new _$EinnahmeRecordSerializer();

class _$EinnahmeRecordSerializer
    implements StructuredSerializer<EinnahmeRecord> {
  @override
  final Iterable<Type> types = const [EinnahmeRecord, _$EinnahmeRecord];
  @override
  final String wireName = 'EinnahmeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, EinnahmeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.medikamment;
    if (value != null) {
      result
        ..add('medikamment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anzbillen;
    if (value != null) {
      result
        ..add('anzbillen')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.beschreibung;
    if (value != null) {
      result
        ..add('beschreibung')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.check;
    if (value != null) {
      result
        ..add('check')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(bool)])));
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
  EinnahmeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EinnahmeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'medikamment':
          result.medikamment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'anzbillen':
          result.anzbillen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'beschreibung':
          result.beschreibung = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'check':
          result.check.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(bool)]))
              as BuiltList<Object>);
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

class _$EinnahmeRecord extends EinnahmeRecord {
  @override
  final String medikamment;
  @override
  final int anzbillen;
  @override
  final String beschreibung;
  @override
  final BuiltList<bool> check;
  @override
  final DocumentReference<Object> reference;

  factory _$EinnahmeRecord([void Function(EinnahmeRecordBuilder) updates]) =>
      (new EinnahmeRecordBuilder()..update(updates)).build();

  _$EinnahmeRecord._(
      {this.medikamment,
      this.anzbillen,
      this.beschreibung,
      this.check,
      this.reference})
      : super._();

  @override
  EinnahmeRecord rebuild(void Function(EinnahmeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EinnahmeRecordBuilder toBuilder() =>
      new EinnahmeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EinnahmeRecord &&
        medikamment == other.medikamment &&
        anzbillen == other.anzbillen &&
        beschreibung == other.beschreibung &&
        check == other.check &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, medikamment.hashCode), anzbillen.hashCode),
                beschreibung.hashCode),
            check.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EinnahmeRecord')
          ..add('medikamment', medikamment)
          ..add('anzbillen', anzbillen)
          ..add('beschreibung', beschreibung)
          ..add('check', check)
          ..add('reference', reference))
        .toString();
  }
}

class EinnahmeRecordBuilder
    implements Builder<EinnahmeRecord, EinnahmeRecordBuilder> {
  _$EinnahmeRecord _$v;

  String _medikamment;
  String get medikamment => _$this._medikamment;
  set medikamment(String medikamment) => _$this._medikamment = medikamment;

  int _anzbillen;
  int get anzbillen => _$this._anzbillen;
  set anzbillen(int anzbillen) => _$this._anzbillen = anzbillen;

  String _beschreibung;
  String get beschreibung => _$this._beschreibung;
  set beschreibung(String beschreibung) => _$this._beschreibung = beschreibung;

  ListBuilder<bool> _check;
  ListBuilder<bool> get check => _$this._check ??= new ListBuilder<bool>();
  set check(ListBuilder<bool> check) => _$this._check = check;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EinnahmeRecordBuilder() {
    EinnahmeRecord._initializeBuilder(this);
  }

  EinnahmeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _medikamment = $v.medikamment;
      _anzbillen = $v.anzbillen;
      _beschreibung = $v.beschreibung;
      _check = $v.check?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EinnahmeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EinnahmeRecord;
  }

  @override
  void update(void Function(EinnahmeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EinnahmeRecord build() {
    _$EinnahmeRecord _$result;
    try {
      _$result = _$v ??
          new _$EinnahmeRecord._(
              medikamment: medikamment,
              anzbillen: anzbillen,
              beschreibung: beschreibung,
              check: _check?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'check';
        _check?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EinnahmeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
