// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'userlist_model_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListModel _$UserListModelFromJson(Map<String, dynamic> json) {
  return _UserListModel.fromJson(json);
}

/// @nodoc
class _$UserListModelTearOff {
  const _$UserListModelTearOff();

  _UserListModel call(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company}) {
    return _UserListModel(
      id: id,
      name: name,
      username: username,
      email: email,
      address: address,
      phone: phone,
      website: website,
      company: company,
    );
  }

  UserListModel fromJson(Map<String, Object?> json) {
    return UserListModel.fromJson(json);
  }
}

/// @nodoc
const $UserListModel = _$UserListModelTearOff();

/// @nodoc
mixin _$UserListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListModelCopyWith<UserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListModelCopyWith<$Res> {
  factory $UserListModelCopyWith(
          UserListModel value, $Res Function(UserListModel) then) =
      _$UserListModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company});

  $AddressCopyWith<$Res>? get address;
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$UserListModelCopyWithImpl<$Res>
    implements $UserListModelCopyWith<$Res> {
  _$UserListModelCopyWithImpl(this._value, this._then);

  final UserListModel _value;
  // ignore: unused_field
  final $Res Function(UserListModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ));
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
abstract class _$UserListModelCopyWith<$Res>
    implements $UserListModelCopyWith<$Res> {
  factory _$UserListModelCopyWith(
          _UserListModel value, $Res Function(_UserListModel) then) =
      __$UserListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$UserListModelCopyWithImpl<$Res>
    extends _$UserListModelCopyWithImpl<$Res>
    implements _$UserListModelCopyWith<$Res> {
  __$UserListModelCopyWithImpl(
      _UserListModel _value, $Res Function(_UserListModel) _then)
      : super(_value, (v) => _then(v as _UserListModel));

  @override
  _UserListModel get _value => super._value as _UserListModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_UserListModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListModel implements _UserListModel {
  const _$_UserListModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});

  factory _$_UserListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final Address? address;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final Company? company;

  @override
  String toString() {
    return 'UserListModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.company, company));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(company));

  @JsonKey(ignore: true)
  @override
  _$UserListModelCopyWith<_UserListModel> get copyWith =>
      __$UserListModelCopyWithImpl<_UserListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListModelToJson(this);
  }
}

abstract class _UserListModel implements UserListModel {
  const factory _UserListModel(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company}) = _$_UserListModel;

  factory _UserListModel.fromJson(Map<String, dynamic> json) =
      _$_UserListModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get email;
  @override
  Address? get address;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  Company? get company;
  @override
  @JsonKey(ignore: true)
  _$UserListModelCopyWith<_UserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
