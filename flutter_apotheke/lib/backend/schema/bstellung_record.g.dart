// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bstellung_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BstellungRecord> _$bstellungRecordSerializer =
    new _$BstellungRecordSerializer();

class _$BstellungRecordSerializer
    implements StructuredSerializer<BstellungRecord> {
  @override
  final Iterable<Type> types = const [BstellungRecord, _$BstellungRecord];
  @override
  final String wireName = 'BstellungRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BstellungRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.preis;
    if (value != null) {
      result
        ..add('Preis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beschreibung;
    if (value != null) {
      result
        ..add('Beschreibung')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  BstellungRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BstellungRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Preis':
          result.preis = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Beschreibung':
          result.beschreibung = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$BstellungRecord extends BstellungRecord {
  @override
  final double preis;
  @override
  final String name;
  @override
  final String beschreibung;
  @override
  final String photo;
  @override
  final DocumentReference<Object> reference;

  factory _$BstellungRecord([void Function(BstellungRecordBuilder) updates]) =>
      (new BstellungRecordBuilder()..update(updates)).build();

  _$BstellungRecord._(
      {this.preis, this.name, this.beschreibung, this.photo, this.reference})
      : super._();

  @override
  BstellungRecord rebuild(void Function(BstellungRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BstellungRecordBuilder toBuilder() =>
      new BstellungRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BstellungRecord &&
        preis == other.preis &&
        name == other.name &&
        beschreibung == other.beschreibung &&
        photo == other.photo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, preis.hashCode), name.hashCode),
                beschreibung.hashCode),
            photo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BstellungRecord')
          ..add('preis', preis)
          ..add('name', name)
          ..add('beschreibung', beschreibung)
          ..add('photo', photo)
          ..add('reference', reference))
        .toString();
  }
}

class BstellungRecordBuilder
    implements Builder<BstellungRecord, BstellungRecordBuilder> {
  _$BstellungRecord _$v;

  double _preis;
  double get preis => _$this._preis;
  set preis(double preis) => _$this._preis = preis;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _beschreibung;
  String get beschreibung => _$this._beschreibung;
  set beschreibung(String beschreibung) => _$this._beschreibung = beschreibung;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BstellungRecordBuilder() {
    BstellungRecord._initializeBuilder(this);
  }

  BstellungRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preis = $v.preis;
      _name = $v.name;
      _beschreibung = $v.beschreibung;
      _photo = $v.photo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BstellungRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BstellungRecord;
  }

  @override
  void update(void Function(BstellungRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BstellungRecord build() {
    final _$result = _$v ??
        new _$BstellungRecord._(
            preis: preis,
            name: name,
            beschreibung: beschreibung,
            photo: photo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
