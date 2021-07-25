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

  GetAllFoods getAllFoods(int page, int section) {
    return GetAllFoods(
      page,
      section,
    );
  }

  GetAllExtras getAllExtras(int page) {
    return GetAllExtras(
      page,
    );
  }

  IndexChanged indexChanged(int index) {
    return IndexChanged(
      index,
    );
  }
}

/// @nodoc
const $MenuEvent = _$MenuEventTearOff();

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getAllMenus,
    required TResult Function(int page, int section) getAllFoods,
    required TResult Function(int page) getAllExtras,
    required TResult Function(int index) indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    TResult Function(int page, int section)? getAllFoods,
    TResult Function(int page)? getAllExtras,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenus value) getAllMenus,
    required TResult Function(GetAllFoods value) getAllFoods,
    required TResult Function(GetAllExtras value) getAllExtras,
    required TResult Function(IndexChanged value) indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    TResult Function(GetAllFoods value)? getAllFoods,
    TResult Function(GetAllExtras value)? getAllExtras,
    TResult Function(IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res> implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  final MenuEvent _value;
  // ignore: unused_field
  final $Res Function(MenuEvent) _then;
}

/// @nodoc
abstract class $GetAllMenusCopyWith<$Res> {
  factory $GetAllMenusCopyWith(
          GetAllMenus value, $Res Function(GetAllMenus) then) =
      _$GetAllMenusCopyWithImpl<$Res>;
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
    required TResult Function(int page, int section) getAllFoods,
    required TResult Function(int page) getAllExtras,
    required TResult Function(int index) indexChanged,
  }) {
    return getAllMenus(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    TResult Function(int page, int section)? getAllFoods,
    TResult Function(int page)? getAllExtras,
    TResult Function(int index)? indexChanged,
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
    required TResult Function(GetAllFoods value) getAllFoods,
    required TResult Function(GetAllExtras value) getAllExtras,
    required TResult Function(IndexChanged value) indexChanged,
  }) {
    return getAllMenus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    TResult Function(GetAllFoods value)? getAllFoods,
    TResult Function(GetAllExtras value)? getAllExtras,
    TResult Function(IndexChanged value)? indexChanged,
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

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllMenusCopyWith<GetAllMenus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllFoodsCopyWith<$Res> {
  factory $GetAllFoodsCopyWith(
          GetAllFoods value, $Res Function(GetAllFoods) then) =
      _$GetAllFoodsCopyWithImpl<$Res>;
  $Res call({int page, int section});
}

/// @nodoc
class _$GetAllFoodsCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements $GetAllFoodsCopyWith<$Res> {
  _$GetAllFoodsCopyWithImpl(
      GetAllFoods _value, $Res Function(GetAllFoods) _then)
      : super(_value, (v) => _then(v as GetAllFoods));

  @override
  GetAllFoods get _value => super._value as GetAllFoods;

  @override
  $Res call({
    Object? page = freezed,
    Object? section = freezed,
  }) {
    return _then(GetAllFoods(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllFoods with DiagnosticableTreeMixin implements GetAllFoods {
  const _$GetAllFoods(this.page, this.section);

  @override
  final int page;
  @override
  final int section;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.getAllFoods(page: $page, section: $section)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.getAllFoods'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('section', section));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllFoods &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.section, section) ||
                const DeepCollectionEquality().equals(other.section, section)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(section);

  @JsonKey(ignore: true)
  @override
  $GetAllFoodsCopyWith<GetAllFoods> get copyWith =>
      _$GetAllFoodsCopyWithImpl<GetAllFoods>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getAllMenus,
    required TResult Function(int page, int section) getAllFoods,
    required TResult Function(int page) getAllExtras,
    required TResult Function(int index) indexChanged,
  }) {
    return getAllFoods(page, section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    TResult Function(int page, int section)? getAllFoods,
    TResult Function(int page)? getAllExtras,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) {
    if (getAllFoods != null) {
      return getAllFoods(page, section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenus value) getAllMenus,
    required TResult Function(GetAllFoods value) getAllFoods,
    required TResult Function(GetAllExtras value) getAllExtras,
    required TResult Function(IndexChanged value) indexChanged,
  }) {
    return getAllFoods(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    TResult Function(GetAllFoods value)? getAllFoods,
    TResult Function(GetAllExtras value)? getAllExtras,
    TResult Function(IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) {
    if (getAllFoods != null) {
      return getAllFoods(this);
    }
    return orElse();
  }
}

abstract class GetAllFoods implements MenuEvent {
  const factory GetAllFoods(int page, int section) = _$GetAllFoods;

  int get page => throw _privateConstructorUsedError;
  int get section => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllFoodsCopyWith<GetAllFoods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllExtrasCopyWith<$Res> {
  factory $GetAllExtrasCopyWith(
          GetAllExtras value, $Res Function(GetAllExtras) then) =
      _$GetAllExtrasCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetAllExtrasCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements $GetAllExtrasCopyWith<$Res> {
  _$GetAllExtrasCopyWithImpl(
      GetAllExtras _value, $Res Function(GetAllExtras) _then)
      : super(_value, (v) => _then(v as GetAllExtras));

  @override
  GetAllExtras get _value => super._value as GetAllExtras;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(GetAllExtras(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllExtras with DiagnosticableTreeMixin implements GetAllExtras {
  const _$GetAllExtras(this.page);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.getAllExtras(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.getAllExtras'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllExtras &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $GetAllExtrasCopyWith<GetAllExtras> get copyWith =>
      _$GetAllExtrasCopyWithImpl<GetAllExtras>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getAllMenus,
    required TResult Function(int page, int section) getAllFoods,
    required TResult Function(int page) getAllExtras,
    required TResult Function(int index) indexChanged,
  }) {
    return getAllExtras(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    TResult Function(int page, int section)? getAllFoods,
    TResult Function(int page)? getAllExtras,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) {
    if (getAllExtras != null) {
      return getAllExtras(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenus value) getAllMenus,
    required TResult Function(GetAllFoods value) getAllFoods,
    required TResult Function(GetAllExtras value) getAllExtras,
    required TResult Function(IndexChanged value) indexChanged,
  }) {
    return getAllExtras(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    TResult Function(GetAllFoods value)? getAllFoods,
    TResult Function(GetAllExtras value)? getAllExtras,
    TResult Function(IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) {
    if (getAllExtras != null) {
      return getAllExtras(this);
    }
    return orElse();
  }
}

abstract class GetAllExtras implements MenuEvent {
  const factory GetAllExtras(int page) = _$GetAllExtras;

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllExtrasCopyWith<GetAllExtras> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexChangedCopyWith<$Res> {
  factory $IndexChangedCopyWith(
          IndexChanged value, $Res Function(IndexChanged) then) =
      _$IndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$IndexChangedCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements $IndexChangedCopyWith<$Res> {
  _$IndexChangedCopyWithImpl(
      IndexChanged _value, $Res Function(IndexChanged) _then)
      : super(_value, (v) => _then(v as IndexChanged));

  @override
  IndexChanged get _value => super._value as IndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(IndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IndexChanged with DiagnosticableTreeMixin implements IndexChanged {
  const _$IndexChanged(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.indexChanged(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.indexChanged'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $IndexChangedCopyWith<IndexChanged> get copyWith =>
      _$IndexChangedCopyWithImpl<IndexChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getAllMenus,
    required TResult Function(int page, int section) getAllFoods,
    required TResult Function(int page) getAllExtras,
    required TResult Function(int index) indexChanged,
  }) {
    return indexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getAllMenus,
    TResult Function(int page, int section)? getAllFoods,
    TResult Function(int page)? getAllExtras,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenus value) getAllMenus,
    required TResult Function(GetAllFoods value) getAllFoods,
    required TResult Function(GetAllExtras value) getAllExtras,
    required TResult Function(IndexChanged value) indexChanged,
  }) {
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenus value)? getAllMenus,
    TResult Function(GetAllFoods value)? getAllFoods,
    TResult Function(GetAllExtras value)? getAllExtras,
    TResult Function(IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class IndexChanged implements MenuEvent {
  const factory IndexChanged(int index) = _$IndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexChangedCopyWith<IndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  _MenuState call(
      {required int index,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          menusFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          extrasFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          foodsFailureOrSuccess,
      String? error,
      int? nextPageKey}) {
    return _MenuState(
      index: index,
      menusFailureOrSuccess: menusFailureOrSuccess,
      extrasFailureOrSuccess: extrasFailureOrSuccess,
      foodsFailureOrSuccess: foodsFailureOrSuccess,
      error: error,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  int get index => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get menusFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get extrasFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get foodsFailureOrSuccess => throw _privateConstructorUsedError;
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
      {int index,
      Option<Either<ServerFailure, Map<String, dynamic>>> menusFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          extrasFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>> foodsFailureOrSuccess,
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
    Object? index = freezed,
    Object? menusFailureOrSuccess = freezed,
    Object? extrasFailureOrSuccess = freezed,
    Object? foodsFailureOrSuccess = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      menusFailureOrSuccess: menusFailureOrSuccess == freezed
          ? _value.menusFailureOrSuccess
          : menusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      extrasFailureOrSuccess: extrasFailureOrSuccess == freezed
          ? _value.extrasFailureOrSuccess
          : extrasFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      foodsFailureOrSuccess: foodsFailureOrSuccess == freezed
          ? _value.foodsFailureOrSuccess
          : foodsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
      {int index,
      Option<Either<ServerFailure, Map<String, dynamic>>> menusFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          extrasFailureOrSuccess,
      Option<Either<ServerFailure, Map<String, dynamic>>> foodsFailureOrSuccess,
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
    Object? index = freezed,
    Object? menusFailureOrSuccess = freezed,
    Object? extrasFailureOrSuccess = freezed,
    Object? foodsFailureOrSuccess = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_MenuState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      menusFailureOrSuccess: menusFailureOrSuccess == freezed
          ? _value.menusFailureOrSuccess
          : menusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      extrasFailureOrSuccess: extrasFailureOrSuccess == freezed
          ? _value.extrasFailureOrSuccess
          : extrasFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      foodsFailureOrSuccess: foodsFailureOrSuccess == freezed
          ? _value.foodsFailureOrSuccess
          : foodsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
      {required this.index,
      required this.menusFailureOrSuccess,
      required this.extrasFailureOrSuccess,
      required this.foodsFailureOrSuccess,
      this.error,
      this.nextPageKey});

  @override
  final int index;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      menusFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      extrasFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      foodsFailureOrSuccess;
  @override
  final String? error;
  @override
  final int? nextPageKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuState(index: $index, menusFailureOrSuccess: $menusFailureOrSuccess, extrasFailureOrSuccess: $extrasFailureOrSuccess, foodsFailureOrSuccess: $foodsFailureOrSuccess, error: $error, nextPageKey: $nextPageKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuState'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('menusFailureOrSuccess', menusFailureOrSuccess))
      ..add(
          DiagnosticsProperty('extrasFailureOrSuccess', extrasFailureOrSuccess))
      ..add(DiagnosticsProperty('foodsFailureOrSuccess', foodsFailureOrSuccess))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('nextPageKey', nextPageKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.menusFailureOrSuccess, menusFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.menusFailureOrSuccess, menusFailureOrSuccess)) &&
            (identical(other.extrasFailureOrSuccess, extrasFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.extrasFailureOrSuccess, extrasFailureOrSuccess)) &&
            (identical(other.foodsFailureOrSuccess, foodsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.foodsFailureOrSuccess, foodsFailureOrSuccess)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.nextPageKey, nextPageKey) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageKey, nextPageKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(menusFailureOrSuccess) ^
      const DeepCollectionEquality().hash(extrasFailureOrSuccess) ^
      const DeepCollectionEquality().hash(foodsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(nextPageKey);

  @JsonKey(ignore: true)
  @override
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {required int index,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          menusFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          extrasFailureOrSuccess,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          foodsFailureOrSuccess,
      String? error,
      int? nextPageKey}) = _$_MenuState;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get menusFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get extrasFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get foodsFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get nextPageKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
