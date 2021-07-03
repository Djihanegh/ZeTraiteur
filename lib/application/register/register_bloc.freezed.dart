// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  IsUserCreated isUserCreated(int phone) {
    return IsUserCreated(
      phone,
    );
  }

  CreateUser createUser(int phone) {
    return CreateUser(
      phone,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  int get phone => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
  $Res call({int phone});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $IsUserCreatedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $IsUserCreatedCopyWith(
          IsUserCreated value, $Res Function(IsUserCreated) then) =
      _$IsUserCreatedCopyWithImpl<$Res>;
  @override
  $Res call({int phone});
}

/// @nodoc
class _$IsUserCreatedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $IsUserCreatedCopyWith<$Res> {
  _$IsUserCreatedCopyWithImpl(
      IsUserCreated _value, $Res Function(IsUserCreated) _then)
      : super(_value, (v) => _then(v as IsUserCreated));

  @override
  IsUserCreated get _value => super._value as IsUserCreated;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(IsUserCreated(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IsUserCreated with DiagnosticableTreeMixin implements IsUserCreated {
  const _$IsUserCreated(this.phone);

  @override
  final int phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.isUserCreated(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.isUserCreated'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsUserCreated &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $IsUserCreatedCopyWith<IsUserCreated> get copyWith =>
      _$IsUserCreatedCopyWithImpl<IsUserCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
  }) {
    return isUserCreated(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    required TResult orElse(),
  }) {
    if (isUserCreated != null) {
      return isUserCreated(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
  }) {
    return isUserCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (isUserCreated != null) {
      return isUserCreated(this);
    }
    return orElse();
  }
}

abstract class IsUserCreated implements RegisterEvent {
  const factory IsUserCreated(int phone) = _$IsUserCreated;

  @override
  int get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $IsUserCreatedCopyWith<IsUserCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory $CreateUserCopyWith(
          CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res>;
  @override
  $Res call({int phone});
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(CreateUser _value, $Res Function(CreateUser) _then)
      : super(_value, (v) => _then(v as CreateUser));

  @override
  CreateUser get _value => super._value as CreateUser;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(CreateUser(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateUser with DiagnosticableTreeMixin implements CreateUser {
  const _$CreateUser(this.phone);

  @override
  final int phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.createUser(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.createUser'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUser &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $CreateUserCopyWith<CreateUser> get copyWith =>
      _$CreateUserCopyWithImpl<CreateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
  }) {
    return createUser(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUser implements RegisterEvent {
  const factory CreateUser(int phone) = _$CreateUser;

  @override
  int get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CreateUserCopyWith<CreateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {required int phone,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      String? error}) {
    return _RegisterState(
      phone: phone,
      isUserCreatedFailureOrSuccess: isUserCreatedFailureOrSuccess,
      createUserFailureOrSuccess: createUserFailureOrSuccess,
      error: error,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  int get phone => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get isUserCreatedFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createUserFailureOrSuccess => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {int phone,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      String? error});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? isUserCreatedFailureOrSuccess = freezed,
    Object? createUserFailureOrSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      isUserCreatedFailureOrSuccess: isUserCreatedFailureOrSuccess == freezed
          ? _value.isUserCreatedFailureOrSuccess
          : isUserCreatedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      createUserFailureOrSuccess: createUserFailureOrSuccess == freezed
          ? _value.createUserFailureOrSuccess
          : createUserFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int phone,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      String? error});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? isUserCreatedFailureOrSuccess = freezed,
    Object? createUserFailureOrSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_RegisterState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      isUserCreatedFailureOrSuccess: isUserCreatedFailureOrSuccess == freezed
          ? _value.isUserCreatedFailureOrSuccess
          : isUserCreatedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      createUserFailureOrSuccess: createUserFailureOrSuccess == freezed
          ? _value.createUserFailureOrSuccess
          : createUserFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState with DiagnosticableTreeMixin implements _RegisterState {
  const _$_RegisterState(
      {required this.phone,
      required this.isUserCreatedFailureOrSuccess,
      required this.createUserFailureOrSuccess,
      this.error});

  @override
  final int phone;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      isUserCreatedFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      createUserFailureOrSuccess;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(phone: $phone, isUserCreatedFailureOrSuccess: $isUserCreatedFailureOrSuccess, createUserFailureOrSuccess: $createUserFailureOrSuccess, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty(
          'isUserCreatedFailureOrSuccess', isUserCreatedFailureOrSuccess))
      ..add(DiagnosticsProperty(
          'createUserFailureOrSuccess', createUserFailureOrSuccess))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.isUserCreatedFailureOrSuccess,
                    isUserCreatedFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.isUserCreatedFailureOrSuccess,
                    isUserCreatedFailureOrSuccess)) &&
            (identical(other.createUserFailureOrSuccess,
                    createUserFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.createUserFailureOrSuccess,
                    createUserFailureOrSuccess)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(isUserCreatedFailureOrSuccess) ^
      const DeepCollectionEquality().hash(createUserFailureOrSuccess) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required int phone,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      String? error}) = _$_RegisterState;

  @override
  int get phone => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get isUserCreatedFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createUserFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
