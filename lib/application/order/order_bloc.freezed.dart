// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderEventTearOff {
  const _$OrderEventTearOff();

  AddFood addFood(int foodId) {
    return AddFood(
      foodId,
    );
  }

  AddExtra addExtra(int extraId) {
    return AddExtra(
      extraId,
    );
  }

  FoodChanged foodChanged(int foodId) {
    return FoodChanged(
      foodId,
    );
  }

  ExtraChanged extraChanged(int extraId) {
    return ExtraChanged(
      extraId,
    );
  }
}

/// @nodoc
const $OrderEvent = _$OrderEventTearOff();

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(int foodId) foodChanged,
    required TResult Function(int extraId) extraChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(int foodId)? foodChanged,
    TResult Function(int extraId)? extraChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(ExtraChanged value) extraChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res> implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  final OrderEvent _value;
  // ignore: unused_field
  final $Res Function(OrderEvent) _then;
}

/// @nodoc
abstract class $AddFoodCopyWith<$Res> {
  factory $AddFoodCopyWith(AddFood value, $Res Function(AddFood) then) =
      _$AddFoodCopyWithImpl<$Res>;
  $Res call({int foodId});
}

/// @nodoc
class _$AddFoodCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $AddFoodCopyWith<$Res> {
  _$AddFoodCopyWithImpl(AddFood _value, $Res Function(AddFood) _then)
      : super(_value, (v) => _then(v as AddFood));

  @override
  AddFood get _value => super._value as AddFood;

  @override
  $Res call({
    Object? foodId = freezed,
  }) {
    return _then(AddFood(
      foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddFood with DiagnosticableTreeMixin implements AddFood {
  const _$AddFood(this.foodId);

  @override
  final int foodId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.addFood(foodId: $foodId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.addFood'))
      ..add(DiagnosticsProperty('foodId', foodId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFood &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(foodId);

  @JsonKey(ignore: true)
  @override
  $AddFoodCopyWith<AddFood> get copyWith =>
      _$AddFoodCopyWithImpl<AddFood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(int foodId) foodChanged,
    required TResult Function(int extraId) extraChanged,
  }) {
    return addFood(foodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(int foodId)? foodChanged,
    TResult Function(int extraId)? extraChanged,
    required TResult orElse(),
  }) {
    if (addFood != null) {
      return addFood(foodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(ExtraChanged value) extraChanged,
  }) {
    return addFood(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    required TResult orElse(),
  }) {
    if (addFood != null) {
      return addFood(this);
    }
    return orElse();
  }
}

abstract class AddFood implements OrderEvent {
  const factory AddFood(int foodId) = _$AddFood;

  int get foodId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddFoodCopyWith<AddFood> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExtraCopyWith<$Res> {
  factory $AddExtraCopyWith(AddExtra value, $Res Function(AddExtra) then) =
      _$AddExtraCopyWithImpl<$Res>;
  $Res call({int extraId});
}

/// @nodoc
class _$AddExtraCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $AddExtraCopyWith<$Res> {
  _$AddExtraCopyWithImpl(AddExtra _value, $Res Function(AddExtra) _then)
      : super(_value, (v) => _then(v as AddExtra));

  @override
  AddExtra get _value => super._value as AddExtra;

  @override
  $Res call({
    Object? extraId = freezed,
  }) {
    return _then(AddExtra(
      extraId == freezed
          ? _value.extraId
          : extraId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddExtra with DiagnosticableTreeMixin implements AddExtra {
  const _$AddExtra(this.extraId);

  @override
  final int extraId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.addExtra(extraId: $extraId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.addExtra'))
      ..add(DiagnosticsProperty('extraId', extraId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddExtra &&
            (identical(other.extraId, extraId) ||
                const DeepCollectionEquality().equals(other.extraId, extraId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(extraId);

  @JsonKey(ignore: true)
  @override
  $AddExtraCopyWith<AddExtra> get copyWith =>
      _$AddExtraCopyWithImpl<AddExtra>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(int foodId) foodChanged,
    required TResult Function(int extraId) extraChanged,
  }) {
    return addExtra(extraId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(int foodId)? foodChanged,
    TResult Function(int extraId)? extraChanged,
    required TResult orElse(),
  }) {
    if (addExtra != null) {
      return addExtra(extraId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(ExtraChanged value) extraChanged,
  }) {
    return addExtra(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    required TResult orElse(),
  }) {
    if (addExtra != null) {
      return addExtra(this);
    }
    return orElse();
  }
}

abstract class AddExtra implements OrderEvent {
  const factory AddExtra(int extraId) = _$AddExtra;

  int get extraId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddExtraCopyWith<AddExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodChangedCopyWith<$Res> {
  factory $FoodChangedCopyWith(
          FoodChanged value, $Res Function(FoodChanged) then) =
      _$FoodChangedCopyWithImpl<$Res>;
  $Res call({int foodId});
}

/// @nodoc
class _$FoodChangedCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $FoodChangedCopyWith<$Res> {
  _$FoodChangedCopyWithImpl(
      FoodChanged _value, $Res Function(FoodChanged) _then)
      : super(_value, (v) => _then(v as FoodChanged));

  @override
  FoodChanged get _value => super._value as FoodChanged;

  @override
  $Res call({
    Object? foodId = freezed,
  }) {
    return _then(FoodChanged(
      foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FoodChanged with DiagnosticableTreeMixin implements FoodChanged {
  const _$FoodChanged(this.foodId);

  @override
  final int foodId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.foodChanged(foodId: $foodId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.foodChanged'))
      ..add(DiagnosticsProperty('foodId', foodId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FoodChanged &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(foodId);

  @JsonKey(ignore: true)
  @override
  $FoodChangedCopyWith<FoodChanged> get copyWith =>
      _$FoodChangedCopyWithImpl<FoodChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(int foodId) foodChanged,
    required TResult Function(int extraId) extraChanged,
  }) {
    return foodChanged(foodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(int foodId)? foodChanged,
    TResult Function(int extraId)? extraChanged,
    required TResult orElse(),
  }) {
    if (foodChanged != null) {
      return foodChanged(foodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(ExtraChanged value) extraChanged,
  }) {
    return foodChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    required TResult orElse(),
  }) {
    if (foodChanged != null) {
      return foodChanged(this);
    }
    return orElse();
  }
}

abstract class FoodChanged implements OrderEvent {
  const factory FoodChanged(int foodId) = _$FoodChanged;

  int get foodId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodChangedCopyWith<FoodChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraChangedCopyWith<$Res> {
  factory $ExtraChangedCopyWith(
          ExtraChanged value, $Res Function(ExtraChanged) then) =
      _$ExtraChangedCopyWithImpl<$Res>;
  $Res call({int extraId});
}

/// @nodoc
class _$ExtraChangedCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $ExtraChangedCopyWith<$Res> {
  _$ExtraChangedCopyWithImpl(
      ExtraChanged _value, $Res Function(ExtraChanged) _then)
      : super(_value, (v) => _then(v as ExtraChanged));

  @override
  ExtraChanged get _value => super._value as ExtraChanged;

  @override
  $Res call({
    Object? extraId = freezed,
  }) {
    return _then(ExtraChanged(
      extraId == freezed
          ? _value.extraId
          : extraId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExtraChanged with DiagnosticableTreeMixin implements ExtraChanged {
  const _$ExtraChanged(this.extraId);

  @override
  final int extraId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.extraChanged(extraId: $extraId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.extraChanged'))
      ..add(DiagnosticsProperty('extraId', extraId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtraChanged &&
            (identical(other.extraId, extraId) ||
                const DeepCollectionEquality().equals(other.extraId, extraId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(extraId);

  @JsonKey(ignore: true)
  @override
  $ExtraChangedCopyWith<ExtraChanged> get copyWith =>
      _$ExtraChangedCopyWithImpl<ExtraChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(int foodId) foodChanged,
    required TResult Function(int extraId) extraChanged,
  }) {
    return extraChanged(extraId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(int foodId)? foodChanged,
    TResult Function(int extraId)? extraChanged,
    required TResult orElse(),
  }) {
    if (extraChanged != null) {
      return extraChanged(extraId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(ExtraChanged value) extraChanged,
  }) {
    return extraChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    required TResult orElse(),
  }) {
    if (extraChanged != null) {
      return extraChanged(this);
    }
    return orElse();
  }
}

abstract class ExtraChanged implements OrderEvent {
  const factory ExtraChanged(int extraId) = _$ExtraChanged;

  int get extraId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraChangedCopyWith<ExtraChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderStateTearOff {
  const _$OrderStateTearOff();

  _OrderState call(
      {required int foodId,
      required int extraId,
      required int menu,
      required int quantity,
      required int index,
      required List<int> foods,
      required List<int> extras,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      String? error,
      List<Lines>? lines}) {
    return _OrderState(
      foodId: foodId,
      extraId: extraId,
      menu: menu,
      quantity: quantity,
      index: index,
      foods: foods,
      extras: extras,
      createOrderFailureOrSuccess: createOrderFailureOrSuccess,
      error: error,
      lines: lines,
    );
  }
}

/// @nodoc
const $OrderState = _$OrderStateTearOff();

/// @nodoc
mixin _$OrderState {
  int get foodId => throw _privateConstructorUsedError;
  int get extraId => throw _privateConstructorUsedError;
  int get menu => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  List<int> get foods => throw _privateConstructorUsedError;
  List<int> get extras => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createOrderFailureOrSuccess => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Lines>? get lines => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
  $Res call(
      {int foodId,
      int extraId,
      int menu,
      int quantity,
      int index,
      List<int> foods,
      List<int> extras,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      String? error,
      List<Lines>? lines});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;

  @override
  $Res call({
    Object? foodId = freezed,
    Object? extraId = freezed,
    Object? menu = freezed,
    Object? quantity = freezed,
    Object? index = freezed,
    Object? foods = freezed,
    Object? extras = freezed,
    Object? createOrderFailureOrSuccess = freezed,
    Object? error = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int,
      extraId: extraId == freezed
          ? _value.extraId
          : extraId // ignore: cast_nullable_to_non_nullable
              as int,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<int>,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<int>,
      createOrderFailureOrSuccess: createOrderFailureOrSuccess == freezed
          ? _value.createOrderFailureOrSuccess
          : createOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc
abstract class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(
          _OrderState value, $Res Function(_OrderState) then) =
      __$OrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int foodId,
      int extraId,
      int menu,
      int quantity,
      int index,
      List<int> foods,
      List<int> extras,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      String? error,
      List<Lines>? lines});
}

/// @nodoc
class __$OrderStateCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(
      _OrderState _value, $Res Function(_OrderState) _then)
      : super(_value, (v) => _then(v as _OrderState));

  @override
  _OrderState get _value => super._value as _OrderState;

  @override
  $Res call({
    Object? foodId = freezed,
    Object? extraId = freezed,
    Object? menu = freezed,
    Object? quantity = freezed,
    Object? index = freezed,
    Object? foods = freezed,
    Object? extras = freezed,
    Object? createOrderFailureOrSuccess = freezed,
    Object? error = freezed,
    Object? lines = freezed,
  }) {
    return _then(_OrderState(
      foodId: foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int,
      extraId: extraId == freezed
          ? _value.extraId
          : extraId // ignore: cast_nullable_to_non_nullable
              as int,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<int>,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<int>,
      createOrderFailureOrSuccess: createOrderFailureOrSuccess == freezed
          ? _value.createOrderFailureOrSuccess
          : createOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
    ));
  }
}

/// @nodoc

class _$_OrderState with DiagnosticableTreeMixin implements _OrderState {
  const _$_OrderState(
      {required this.foodId,
      required this.extraId,
      required this.menu,
      required this.quantity,
      required this.index,
      required this.foods,
      required this.extras,
      required this.createOrderFailureOrSuccess,
      this.error,
      this.lines});

  @override
  final int foodId;
  @override
  final int extraId;
  @override
  final int menu;
  @override
  final int quantity;
  @override
  final int index;
  @override
  final List<int> foods;
  @override
  final List<int> extras;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      createOrderFailureOrSuccess;
  @override
  final String? error;
  @override
  final List<Lines>? lines;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState(foodId: $foodId, extraId: $extraId, menu: $menu, quantity: $quantity, index: $index, foods: $foods, extras: $extras, createOrderFailureOrSuccess: $createOrderFailureOrSuccess, error: $error, lines: $lines)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState'))
      ..add(DiagnosticsProperty('foodId', foodId))
      ..add(DiagnosticsProperty('extraId', extraId))
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('foods', foods))
      ..add(DiagnosticsProperty('extras', extras))
      ..add(DiagnosticsProperty(
          'createOrderFailureOrSuccess', createOrderFailureOrSuccess))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('lines', lines));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderState &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)) &&
            (identical(other.extraId, extraId) ||
                const DeepCollectionEquality()
                    .equals(other.extraId, extraId)) &&
            (identical(other.menu, menu) ||
                const DeepCollectionEquality().equals(other.menu, menu)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createOrderFailureOrSuccess,
                    createOrderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.createOrderFailureOrSuccess,
                    createOrderFailureOrSuccess)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foodId) ^
      const DeepCollectionEquality().hash(extraId) ^
      const DeepCollectionEquality().hash(menu) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(foods) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createOrderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(lines);

  @JsonKey(ignore: true)
  @override
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState(
      {required int foodId,
      required int extraId,
      required int menu,
      required int quantity,
      required int index,
      required List<int> foods,
      required List<int> extras,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      String? error,
      List<Lines>? lines}) = _$_OrderState;

  @override
  int get foodId => throw _privateConstructorUsedError;
  @override
  int get extraId => throw _privateConstructorUsedError;
  @override
  int get menu => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  List<int> get foods => throw _privateConstructorUsedError;
  @override
  List<int> get extras => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createOrderFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<Lines>? get lines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}