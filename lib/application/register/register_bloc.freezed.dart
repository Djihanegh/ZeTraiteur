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

  NumberPhoneChanged numberPhoneChanged(int phone) {
    return NumberPhoneChanged(
      phone,
    );
  }

  EmailAddressChanged emailAddressChanged(String emailAddress) {
    return EmailAddressChanged(
      emailAddress,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class $IsUserCreatedCopyWith<$Res> {
  factory $IsUserCreatedCopyWith(
          IsUserCreated value, $Res Function(IsUserCreated) then) =
      _$IsUserCreatedCopyWithImpl<$Res>;
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
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
  }) {
    return isUserCreated(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
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
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
  }) {
    return isUserCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
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

  int get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsUserCreatedCopyWith<IsUserCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(
          CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res>;
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
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
  }) {
    return createUser(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
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
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
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

  int get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserCopyWith<CreateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberPhoneChangedCopyWith<$Res> {
  factory $NumberPhoneChangedCopyWith(
          NumberPhoneChanged value, $Res Function(NumberPhoneChanged) then) =
      _$NumberPhoneChangedCopyWithImpl<$Res>;
  $Res call({int phone});
}

/// @nodoc
class _$NumberPhoneChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $NumberPhoneChangedCopyWith<$Res> {
  _$NumberPhoneChangedCopyWithImpl(
      NumberPhoneChanged _value, $Res Function(NumberPhoneChanged) _then)
      : super(_value, (v) => _then(v as NumberPhoneChanged));

  @override
  NumberPhoneChanged get _value => super._value as NumberPhoneChanged;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(NumberPhoneChanged(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberPhoneChanged
    with DiagnosticableTreeMixin
    implements NumberPhoneChanged {
  const _$NumberPhoneChanged(this.phone);

  @override
  final int phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.numberPhoneChanged(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.numberPhoneChanged'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberPhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $NumberPhoneChangedCopyWith<NumberPhoneChanged> get copyWith =>
      _$NumberPhoneChangedCopyWithImpl<NumberPhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
  }) {
    return numberPhoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (numberPhoneChanged != null) {
      return numberPhoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
  }) {
    return numberPhoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (numberPhoneChanged != null) {
      return numberPhoneChanged(this);
    }
    return orElse();
  }
}

abstract class NumberPhoneChanged implements RegisterEvent {
  const factory NumberPhoneChanged(int phone) = _$NumberPhoneChanged;

  int get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberPhoneChangedCopyWith<NumberPhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAddressChangedCopyWith<$Res> {
  factory $EmailAddressChangedCopyWith(
          EmailAddressChanged value, $Res Function(EmailAddressChanged) then) =
      _$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

/// @nodoc
class _$EmailAddressChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $EmailAddressChangedCopyWith<$Res> {
  _$EmailAddressChangedCopyWithImpl(
      EmailAddressChanged _value, $Res Function(EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as EmailAddressChanged));

  @override
  EmailAddressChanged get _value => super._value as EmailAddressChanged;

  @override
  $Res call({
    Object? emailAddress = freezed,
  }) {
    return _then(EmailAddressChanged(
      emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailAddressChanged
    with DiagnosticableTreeMixin
    implements EmailAddressChanged {
  const _$EmailAddressChanged(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.emailAddressChanged(emailAddress: $emailAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.emailAddressChanged'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailAddressChanged &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @JsonKey(ignore: true)
  @override
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      _$EmailAddressChangedCopyWithImpl<EmailAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements RegisterEvent {
  const factory EmailAddressChanged(String emailAddress) =
      _$EmailAddressChanged;

  String get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged with DiagnosticableTreeMixin implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.nameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.nameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RegisterEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {required int phone,
      required String name,
      required String emailAddress,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      String? error}) {
    return _RegisterState(
      phone: phone,
      name: name,
      emailAddress: emailAddress,
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
  String get name => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
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
      String name,
      String emailAddress,
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
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? isUserCreatedFailureOrSuccess = freezed,
    Object? createUserFailureOrSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
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
      String name,
      String emailAddress,
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
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? isUserCreatedFailureOrSuccess = freezed,
    Object? createUserFailureOrSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_RegisterState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.name,
      required this.emailAddress,
      required this.isUserCreatedFailureOrSuccess,
      required this.createUserFailureOrSuccess,
      this.error});

  @override
  final int phone;
  @override
  final String name;
  @override
  final String emailAddress;
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
    return 'RegisterState(phone: $phone, name: $name, emailAddress: $emailAddress, isUserCreatedFailureOrSuccess: $isUserCreatedFailureOrSuccess, createUserFailureOrSuccess: $createUserFailureOrSuccess, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
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
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
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
      required String name,
      required String emailAddress,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      String? error}) = _$_RegisterState;

  @override
  int get phone => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get emailAddress => throw _privateConstructorUsedError;
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
