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

  ChangeUserStatus changeUserStatus(bool exist) {
    return ChangeUserStatus(
      exist,
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

  LastNameChanged lastNameChanged(String name) {
    return LastNameChanged(
      name,
    );
  }

  AddressChanged addressChanged(String address) {
    return AddressChanged(
      address,
    );
  }

  GetCities getCities(int page) {
    return GetCities(
      page,
    );
  }

  CitiesChanged citiesReceived(List<CityObj> cities) {
    return CitiesChanged(
      cities,
    );
  }

  IsFailure isFailure(String error) {
    return IsFailure(
      error,
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
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
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
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return isUserCreated(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
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
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return isUserCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
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
abstract class $ChangeUserStatusCopyWith<$Res> {
  factory $ChangeUserStatusCopyWith(
          ChangeUserStatus value, $Res Function(ChangeUserStatus) then) =
      _$ChangeUserStatusCopyWithImpl<$Res>;
  $Res call({bool exist});
}

/// @nodoc
class _$ChangeUserStatusCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $ChangeUserStatusCopyWith<$Res> {
  _$ChangeUserStatusCopyWithImpl(
      ChangeUserStatus _value, $Res Function(ChangeUserStatus) _then)
      : super(_value, (v) => _then(v as ChangeUserStatus));

  @override
  ChangeUserStatus get _value => super._value as ChangeUserStatus;

  @override
  $Res call({
    Object? exist = freezed,
  }) {
    return _then(ChangeUserStatus(
      exist == freezed
          ? _value.exist
          : exist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeUserStatus
    with DiagnosticableTreeMixin
    implements ChangeUserStatus {
  const _$ChangeUserStatus(this.exist);

  @override
  final bool exist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.changeUserStatus(exist: $exist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.changeUserStatus'))
      ..add(DiagnosticsProperty('exist', exist));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeUserStatus &&
            (identical(other.exist, exist) ||
                const DeepCollectionEquality().equals(other.exist, exist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exist);

  @JsonKey(ignore: true)
  @override
  $ChangeUserStatusCopyWith<ChangeUserStatus> get copyWith =>
      _$ChangeUserStatusCopyWithImpl<ChangeUserStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return changeUserStatus(exist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) {
    if (changeUserStatus != null) {
      return changeUserStatus(exist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return changeUserStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
    required TResult orElse(),
  }) {
    if (changeUserStatus != null) {
      return changeUserStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeUserStatus implements RegisterEvent {
  const factory ChangeUserStatus(bool exist) = _$ChangeUserStatus;

  bool get exist => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeUserStatusCopyWith<ChangeUserStatus> get copyWith =>
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
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return createUser(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
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
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
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
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return numberPhoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
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
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return numberPhoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
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
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
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
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
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
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
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
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
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
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(LastNameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChanged
    with DiagnosticableTreeMixin
    implements LastNameChanged {
  const _$LastNameChanged(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.lastNameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.lastNameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return lastNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements RegisterEvent {
  const factory LastNameChanged(String name) = _$LastNameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressChangedCopyWith<$Res> {
  factory $AddressChangedCopyWith(
          AddressChanged value, $Res Function(AddressChanged) then) =
      _$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$AddressChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $AddressChangedCopyWith<$Res> {
  _$AddressChangedCopyWithImpl(
      AddressChanged _value, $Res Function(AddressChanged) _then)
      : super(_value, (v) => _then(v as AddressChanged));

  @override
  AddressChanged get _value => super._value as AddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(AddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressChanged with DiagnosticableTreeMixin implements AddressChanged {
  const _$AddressChanged(this.address);

  @override
  final String address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.addressChanged(address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.addressChanged'))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      _$AddressChangedCopyWithImpl<AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class AddressChanged implements RegisterEvent {
  const factory AddressChanged(String address) = _$AddressChanged;

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCitiesCopyWith<$Res> {
  factory $GetCitiesCopyWith(GetCities value, $Res Function(GetCities) then) =
      _$GetCitiesCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetCitiesCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $GetCitiesCopyWith<$Res> {
  _$GetCitiesCopyWithImpl(GetCities _value, $Res Function(GetCities) _then)
      : super(_value, (v) => _then(v as GetCities));

  @override
  GetCities get _value => super._value as GetCities;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(GetCities(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCities with DiagnosticableTreeMixin implements GetCities {
  const _$GetCities(this.page);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.getCities(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.getCities'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCities &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $GetCitiesCopyWith<GetCities> get copyWith =>
      _$GetCitiesCopyWithImpl<GetCities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return getCities(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return getCities(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities(this);
    }
    return orElse();
  }
}

abstract class GetCities implements RegisterEvent {
  const factory GetCities(int page) = _$GetCities;

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCitiesCopyWith<GetCities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesChangedCopyWith<$Res> {
  factory $CitiesChangedCopyWith(
          CitiesChanged value, $Res Function(CitiesChanged) then) =
      _$CitiesChangedCopyWithImpl<$Res>;
  $Res call({List<CityObj> cities});
}

/// @nodoc
class _$CitiesChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $CitiesChangedCopyWith<$Res> {
  _$CitiesChangedCopyWithImpl(
      CitiesChanged _value, $Res Function(CitiesChanged) _then)
      : super(_value, (v) => _then(v as CitiesChanged));

  @override
  CitiesChanged get _value => super._value as CitiesChanged;

  @override
  $Res call({
    Object? cities = freezed,
  }) {
    return _then(CitiesChanged(
      cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityObj>,
    ));
  }
}

/// @nodoc

class _$CitiesChanged with DiagnosticableTreeMixin implements CitiesChanged {
  const _$CitiesChanged(this.cities);

  @override
  final List<CityObj> cities;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.citiesReceived(cities: $cities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.citiesReceived'))
      ..add(DiagnosticsProperty('cities', cities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitiesChanged &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cities);

  @JsonKey(ignore: true)
  @override
  $CitiesChangedCopyWith<CitiesChanged> get copyWith =>
      _$CitiesChangedCopyWithImpl<CitiesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return citiesReceived(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) {
    if (citiesReceived != null) {
      return citiesReceived(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return citiesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
    required TResult orElse(),
  }) {
    if (citiesReceived != null) {
      return citiesReceived(this);
    }
    return orElse();
  }
}

abstract class CitiesChanged implements RegisterEvent {
  const factory CitiesChanged(List<CityObj> cities) = _$CitiesChanged;

  List<CityObj> get cities => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesChangedCopyWith<CitiesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsFailureCopyWith<$Res> {
  factory $IsFailureCopyWith(IsFailure value, $Res Function(IsFailure) then) =
      _$IsFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$IsFailureCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $IsFailureCopyWith<$Res> {
  _$IsFailureCopyWithImpl(IsFailure _value, $Res Function(IsFailure) _then)
      : super(_value, (v) => _then(v as IsFailure));

  @override
  IsFailure get _value => super._value as IsFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(IsFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsFailure with DiagnosticableTreeMixin implements IsFailure {
  const _$IsFailure(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.isFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.isFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $IsFailureCopyWith<IsFailure> get copyWith =>
      _$IsFailureCopyWithImpl<IsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) isUserCreated,
    required TResult Function(bool exist) changeUserStatus,
    required TResult Function(int phone) createUser,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) lastNameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(int page) getCities,
    required TResult Function(List<CityObj> cities) citiesReceived,
    required TResult Function(String error) isFailure,
  }) {
    return isFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? isUserCreated,
    TResult Function(bool exist)? changeUserStatus,
    TResult Function(int phone)? createUser,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? lastNameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(int page)? getCities,
    TResult Function(List<CityObj> cities)? citiesReceived,
    TResult Function(String error)? isFailure,
    required TResult orElse(),
  }) {
    if (isFailure != null) {
      return isFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsUserCreated value) isUserCreated,
    required TResult Function(ChangeUserStatus value) changeUserStatus,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(GetCities value) getCities,
    required TResult Function(CitiesChanged value) citiesReceived,
    required TResult Function(IsFailure value) isFailure,
  }) {
    return isFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsUserCreated value)? isUserCreated,
    TResult Function(ChangeUserStatus value)? changeUserStatus,
    TResult Function(CreateUser value)? createUser,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(GetCities value)? getCities,
    TResult Function(CitiesChanged value)? citiesReceived,
    TResult Function(IsFailure value)? isFailure,
    required TResult orElse(),
  }) {
    if (isFailure != null) {
      return isFailure(this);
    }
    return orElse();
  }
}

abstract class IsFailure implements RegisterEvent {
  const factory IsFailure(String error) = _$IsFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsFailureCopyWith<IsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {required int phone,
      required String name,
      required String lastName,
      required String address,
      required bool isUserExists,
      required String emailAddress,
      required List<CityObj> cities,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      required Option<Either<ServerFailure, List<CityObj>>>
          getCitiesFailureOrSuccess,
      String? error}) {
    return _RegisterState(
      phone: phone,
      name: name,
      lastName: lastName,
      address: address,
      isUserExists: isUserExists,
      emailAddress: emailAddress,
      cities: cities,
      isUserCreatedFailureOrSuccess: isUserCreatedFailureOrSuccess,
      createUserFailureOrSuccess: createUserFailureOrSuccess,
      getCitiesFailureOrSuccess: getCitiesFailureOrSuccess,
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
  String get lastName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get isUserExists => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  List<CityObj> get cities => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get isUserCreatedFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createUserFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, List<CityObj>>> get getCitiesFailureOrSuccess =>
      throw _privateConstructorUsedError;
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
      String lastName,
      String address,
      bool isUserExists,
      String emailAddress,
      List<CityObj> cities,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      Option<Either<ServerFailure, List<CityObj>>> getCitiesFailureOrSuccess,
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
    Object? lastName = freezed,
    Object? address = freezed,
    Object? isUserExists = freezed,
    Object? emailAddress = freezed,
    Object? cities = freezed,
    Object? isUserCreatedFailureOrSuccess = freezed,
    Object? createUserFailureOrSuccess = freezed,
    Object? getCitiesFailureOrSuccess = freezed,
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
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isUserExists: isUserExists == freezed
          ? _value.isUserExists
          : isUserExists // ignore: cast_nullable_to_non_nullable
              as bool,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityObj>,
      isUserCreatedFailureOrSuccess: isUserCreatedFailureOrSuccess == freezed
          ? _value.isUserCreatedFailureOrSuccess
          : isUserCreatedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      createUserFailureOrSuccess: createUserFailureOrSuccess == freezed
          ? _value.createUserFailureOrSuccess
          : createUserFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      getCitiesFailureOrSuccess: getCitiesFailureOrSuccess == freezed
          ? _value.getCitiesFailureOrSuccess
          : getCitiesFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, List<CityObj>>>,
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
      String lastName,
      String address,
      bool isUserExists,
      String emailAddress,
      List<CityObj> cities,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      Option<Either<ServerFailure, List<CityObj>>> getCitiesFailureOrSuccess,
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
    Object? lastName = freezed,
    Object? address = freezed,
    Object? isUserExists = freezed,
    Object? emailAddress = freezed,
    Object? cities = freezed,
    Object? isUserCreatedFailureOrSuccess = freezed,
    Object? createUserFailureOrSuccess = freezed,
    Object? getCitiesFailureOrSuccess = freezed,
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
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isUserExists: isUserExists == freezed
          ? _value.isUserExists
          : isUserExists // ignore: cast_nullable_to_non_nullable
              as bool,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityObj>,
      isUserCreatedFailureOrSuccess: isUserCreatedFailureOrSuccess == freezed
          ? _value.isUserCreatedFailureOrSuccess
          : isUserCreatedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      createUserFailureOrSuccess: createUserFailureOrSuccess == freezed
          ? _value.createUserFailureOrSuccess
          : createUserFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      getCitiesFailureOrSuccess: getCitiesFailureOrSuccess == freezed
          ? _value.getCitiesFailureOrSuccess
          : getCitiesFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, List<CityObj>>>,
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
      required this.lastName,
      required this.address,
      required this.isUserExists,
      required this.emailAddress,
      required this.cities,
      required this.isUserCreatedFailureOrSuccess,
      required this.createUserFailureOrSuccess,
      required this.getCitiesFailureOrSuccess,
      this.error});

  @override
  final int phone;
  @override
  final String name;
  @override
  final String lastName;
  @override
  final String address;
  @override
  final bool isUserExists;
  @override
  final String emailAddress;
  @override
  final List<CityObj> cities;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      isUserCreatedFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      createUserFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, List<CityObj>>> getCitiesFailureOrSuccess;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(phone: $phone, name: $name, lastName: $lastName, address: $address, isUserExists: $isUserExists, emailAddress: $emailAddress, cities: $cities, isUserCreatedFailureOrSuccess: $isUserCreatedFailureOrSuccess, createUserFailureOrSuccess: $createUserFailureOrSuccess, getCitiesFailureOrSuccess: $getCitiesFailureOrSuccess, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('isUserExists', isUserExists))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('cities', cities))
      ..add(DiagnosticsProperty(
          'isUserCreatedFailureOrSuccess', isUserCreatedFailureOrSuccess))
      ..add(DiagnosticsProperty(
          'createUserFailureOrSuccess', createUserFailureOrSuccess))
      ..add(DiagnosticsProperty(
          'getCitiesFailureOrSuccess', getCitiesFailureOrSuccess))
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
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.isUserExists, isUserExists) ||
                const DeepCollectionEquality()
                    .equals(other.isUserExists, isUserExists)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)) &&
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
            (identical(other.getCitiesFailureOrSuccess,
                    getCitiesFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.getCitiesFailureOrSuccess,
                    getCitiesFailureOrSuccess)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(isUserExists) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(cities) ^
      const DeepCollectionEquality().hash(isUserCreatedFailureOrSuccess) ^
      const DeepCollectionEquality().hash(createUserFailureOrSuccess) ^
      const DeepCollectionEquality().hash(getCitiesFailureOrSuccess) ^
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
      required String lastName,
      required String address,
      required bool isUserExists,
      required String emailAddress,
      required List<CityObj> cities,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          isUserCreatedFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createUserFailureOrSuccess,
      required Option<Either<ServerFailure, List<CityObj>>>
          getCitiesFailureOrSuccess,
      String? error}) = _$_RegisterState;

  @override
  int get phone => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  bool get isUserExists => throw _privateConstructorUsedError;
  @override
  String get emailAddress => throw _privateConstructorUsedError;
  @override
  List<CityObj> get cities => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get isUserCreatedFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createUserFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, List<CityObj>>> get getCitiesFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
