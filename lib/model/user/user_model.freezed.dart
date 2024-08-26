// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return $_UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get token => throw _privateConstructorUsedError; // User token
  String get error => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({String token, String error});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$$_UserModelImplCopyWith(
          _$$_UserModelImpl value, $Res Function(_$$_UserModelImpl) then) =
      __$$$_UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String error});
}

/// @nodoc
class __$$$_UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$$_UserModelImpl>
    implements _$$$_UserModelImplCopyWith<$Res> {
  __$$$_UserModelImplCopyWithImpl(
      _$$_UserModelImpl _value, $Res Function(_$$_UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? error = null,
  }) {
    return _then(_$$_UserModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_UserModelImpl implements $_UserModel {
  _$$_UserModelImpl({this.token = '', this.error = ''});

  factory _$$_UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_UserModelImplFromJson(json);

  @override
  @JsonKey()
  final String token;
// User token
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'UserModel(token: $token, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_UserModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, error);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$$_UserModelImplCopyWith<_$$_UserModelImpl> get copyWith =>
      __$$$_UserModelImplCopyWithImpl<_$$_UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_UserModelImplToJson(
      this,
    );
  }
}

abstract class $_UserModel implements UserModel {
  factory $_UserModel({final String token, final String error}) =
      _$$_UserModelImpl;

  factory $_UserModel.fromJson(Map<String, dynamic> json) =
      _$$_UserModelImpl.fromJson;

  @override
  String get token; // User token
  @override
  String get error;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$$_UserModelImplCopyWith<_$$_UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
