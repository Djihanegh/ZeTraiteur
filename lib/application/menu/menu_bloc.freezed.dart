// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuEventTearOff {
  const _$MenuEventTearOff();

  GetAllMenus getAllMenus(int page) {
    return GetAllMenus(
      page,
    );
  }
}

/// @nodoc
const $MenuEvent = _$MenuEventTearOff();

/// @nodoc
mixin _$MenuEvent {
  int get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getAllMenus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenus value) getAllMenus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuEventCopyWith<MenuEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res> implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  final MenuEvent _value;
  // ignore: unused_field
  final $Res Function(MenuEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $GetAllMenusCopyWith<$Res> implements $MenuEventCopyWith<$Res> {
  factory $GetAllMenusCopyWith(
          GetAllMenus value, $Res Function(GetAllMenus) then) =
      _$GetAllMenusCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class _$GetAllMenusCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements $GetAllMenusCopyWith<$Res> {
  _$GetAllMenusCopyWithImpl(
      GetAllMenus _value, $Res Function(GetAllMenus) _then)
      : super(_value, (v) => _then(v as GetAllMenus));

  @override
  GetAllMenus get _value => super._value as GetAllMenus;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(GetAllMenus(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllMenus with DiagnosticableTreeMixin implements GetAllMenus {
  const _$GetAllMenus(this.page);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.getAllMenus(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.getAllMenus'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllMenus &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $GetAllMenusCopyWith<GetAllMenus> get copyWith =>
      _$GetAllMenusCopyWithImpl<GetAllMenus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getAllMenus,
  }) {
    return getAllMenus(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    required TResult orElse(),
  }) {
    if (getAllMenus != null) {
      return getAllMenus(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenus value) getAllMenus,
  }) {
    return getAllMenus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    required TResult orElse(),
  }) {
    if (getAllMenus != null) {
      return getAllMenus(this);
    }
    return orElse();
  }
}

abstract class GetAllMenus implements MenuEvent {
  const factory GetAllMenus(int page) = _$GetAllMenus;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetAllMenusCopyWith<GetAllMenus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  _MenuState call(
      {required Option<Either<ServerFailure, Map<String, dynamic>>>
          menusFailureOrSuccess,
      String? error,
      int? nextPageKey}) {
    return _MenuState(
      menusFailureOrSuccess: menusFailureOrSuccess,
      error: error,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get menusFailureOrSuccess => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ServerFailure, Map<String, dynamic>>>
          menusFailureOrSuccess,
      String? error,
      int? nextPageKey});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;

  @override
  $Res call({
    Object? menusFailureOrSuccess = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      menusFailureOrSuccess: menusFailureOrSuccess == freezed
          ? _value.menusFailureOrSuccess
          : menusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageKey: nextPageKey == freezed
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuStateCopyWith(
          _MenuState value, $Res Function(_MenuState) then) =
      __$MenuStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ServerFailure, Map<String, dynamic>>>
          menusFailureOrSuccess,
      String? error,
      int? nextPageKey});
}

/// @nodoc
class __$MenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$MenuStateCopyWith<$Res> {
  __$MenuStateCopyWithImpl(_MenuState _value, $Res Function(_MenuState) _then)
      : super(_value, (v) => _then(v as _MenuState));

  @override
  _MenuState get _value => super._value as _MenuState;

  @override
  $Res call({
    Object? menusFailureOrSuccess = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_MenuState(
      menusFailureOrSuccess: menusFailureOrSuccess == freezed
          ? _value.menusFailureOrSuccess
          : menusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageKey: nextPageKey == freezed
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_MenuState with DiagnosticableTreeMixin implements _MenuState {
  const _$_MenuState(
      {required this.menusFailureOrSuccess, this.error, this.nextPageKey});

  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      menusFailureOrSuccess;
  @override
  final String? error;
  @override
  final int? nextPageKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuState(menusFailureOrSuccess: $menusFailureOrSuccess, error: $error, nextPageKey: $nextPageKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuState'))
      ..add(DiagnosticsProperty('menusFailureOrSuccess', menusFailureOrSuccess))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('nextPageKey', nextPageKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuState &&
            (identical(other.menusFailureOrSuccess, menusFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.menusFailureOrSuccess, menusFailureOrSuccess)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.nextPageKey, nextPageKey) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageKey, nextPageKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menusFailureOrSuccess) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(nextPageKey);

  @JsonKey(ignore: true)
  @override
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {required Option<Either<ServerFailure, Map<String, dynamic>>>
          menusFailureOrSuccess,
      String? error,
      int? nextPageKey}) = _$_MenuState;

  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get menusFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get nextPageKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
