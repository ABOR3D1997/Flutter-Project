// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insuranceNumber;
    if (value != null) {
      result
        ..add('insuranceNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateofbirth;
    if (value != null) {
      result
        ..add('dateofbirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.housNumber;
    if (value != null) {
      result
        ..add('housNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.plz;
    if (value != null) {
      result
        ..add('plz')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  UserRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'insuranceNumber':
          result.insuranceNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateofbirth':
          result.dateofbirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'housNumber':
          result.housNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'plz':
          result.plz = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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

class _$UserRecord extends UserRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final int age;
  @override
  final String name;
  @override
  final String lastName;
  @override
  final String insuranceNumber;
  @override
  final DateTime dateofbirth;
  @override
  final String city;
  @override
  final String street;
  @override
  final String housNumber;
  @override
  final String plz;
  @override
  final DocumentReference<Object> rezept;
  @override
  final DocumentReference<Object> reference;

  factory _$UserRecord([void Function(UserRecordBuilder) updates]) =>
      (new UserRecordBuilder()..update(updates)).build();

  _$UserRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.age,
      this.name,
      this.lastName,
      this.insuranceNumber,
      this.dateofbirth,
      this.city,
      this.street,
      this.housNumber,
      this.plz,
      this.rezept,
      this.reference})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        age == other.age &&
        name == other.name &&
        lastName == other.lastName &&
        insuranceNumber == other.insuranceNumber &&
        dateofbirth == other.dateofbirth &&
        city == other.city &&
        street == other.street &&
        housNumber == other.housNumber &&
        plz == other.plz &&
        rezept == other.rezept &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        email
                                                                            .hashCode),
                                                                    displayName
                                                                        .hashCode),
                                                                photoUrl
                                                                    .hashCode),
                                                            uid.hashCode),
                                                        createdTime.hashCode),
                                                    phoneNumber.hashCode),
                                                age.hashCode),
                                            name.hashCode),
                                        lastName.hashCode),
                                    insuranceNumber.hashCode),
                                dateofbirth.hashCode),
                            city.hashCode),
                        street.hashCode),
                    housNumber.hashCode),
                plz.hashCode),
            rezept.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('age', age)
          ..add('name', name)
          ..add('lastName', lastName)
          ..add('insuranceNumber', insuranceNumber)
          ..add('dateofbirth', dateofbirth)
          ..add('city', city)
          ..add('street', street)
          ..add('housNumber', housNumber)
          ..add('plz', plz)
          ..add('rezept', rezept)
          ..add('reference', reference))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _insuranceNumber;
  String get insuranceNumber => _$this._insuranceNumber;
  set insuranceNumber(String insuranceNumber) =>
      _$this._insuranceNumber = insuranceNumber;

  DateTime _dateofbirth;
  DateTime get dateofbirth => _$this._dateofbirth;
  set dateofbirth(DateTime dateofbirth) => _$this._dateofbirth = dateofbirth;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _housNumber;
  String get housNumber => _$this._housNumber;
  set housNumber(String housNumber) => _$this._housNumber = housNumber;

  String _plz;
  String get plz => _$this._plz;
  set plz(String plz) => _$this._plz = plz;

  DocumentReference<Object> _rezept;
  DocumentReference<Object> get rezept => _$this._rezept;
  set rezept(DocumentReference<Object> rezept) => _$this._rezept = rezept;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _age = $v.age;
      _name = $v.name;
      _lastName = $v.lastName;
      _insuranceNumber = $v.insuranceNumber;
      _dateofbirth = $v.dateofbirth;
      _city = $v.city;
      _street = $v.street;
      _housNumber = $v.housNumber;
      _plz = $v.plz;
      _rezept = $v.rezept;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRecord build() {
    final _$result = _$v ??
        new _$UserRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            age: age,
            name: name,
            lastName: lastName,
            insuranceNumber: insuranceNumber,
            dateofbirth: dateofbirth,
            city: city,
            street: street,
            housNumber: housNumber,
            plz: plz,
            rezept: rezept,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
