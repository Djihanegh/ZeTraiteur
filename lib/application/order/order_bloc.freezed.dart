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

  AddFood addFood(int foodId, int index) {
    return AddFood(
      foodId,
      index,
    );
  }

  AddExtra addExtra(int extraId) {
    return AddExtra(
      extraId,
    );
  }

  SelectFood selectFood(String name, Food food, int selectedIndex) {
    return SelectFood(
      name,
      food,
      selectedIndex,
    );
  }

  SelectExtra selectExtra(String name, Food extra, int index) {
    return SelectExtra(
      name,
      extra,
      index,
    );
  }

  FoodChanged foodChanged(int foodId, int index) {
    return FoodChanged(
      foodId,
      index,
    );
  }

  DeliveryFeeChanged deliveryFeeChanged(int deliveryFee) {
    return DeliveryFeeChanged(
      deliveryFee,
    );
  }

  ExtraChanged extraChanged(int extraId) {
    return ExtraChanged(
      extraId,
    );
  }

  SendOrderToCart sendOrderToCart(int menuId, int index) {
    return SendOrderToCart(
      menuId,
      index,
    );
  }

  SendCompleteOrderToCart sendCompleteOrderToCart(String menu, int index) {
    return SendCompleteOrderToCart(
      menu,
      index,
    );
  }

  NumberPhoneChanged numberPhoneChanged(int phone) {
    return NumberPhoneChanged(
      phone,
    );
  }

  NumberOfOrderChanged numberOfOrderChanged(int numberOfOrder) {
    return NumberOfOrderChanged(
      numberOfOrder,
    );
  }

  AddressChanged addressChanged(String address) {
    return AddressChanged(
      address,
    );
  }

  CreateOrder createOrder(Map<String, dynamic> body) {
    return CreateOrder(
      body,
    );
  }

  PriceChanged priceChanged(double price) {
    return PriceChanged(
      price,
    );
  }

  DeleteLine deleteLine(ShoppingCartLines shoppingCartLine, int index) {
    return DeleteLine(
      shoppingCartLine,
      index,
    );
  }

  ReinitializeExtraAndFood reinitializeExtraAndFood() {
    return const ReinitializeExtraAndFood();
  }

  ReinitializeRadioBtnValues reinitializeRadioBtnValues(bool value) {
    return ReinitializeRadioBtnValues(
      value,
    );
  }

  FoodPriceChanged foodPriceChanged(bool value) {
    return FoodPriceChanged(
      value,
    );
  }
}

/// @nodoc
const $OrderEvent = _$OrderEventTearOff();

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
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
  $Res call({int foodId, int index});
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
    Object? index = freezed,
  }) {
    return _then(AddFood(
      foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddFood with DiagnosticableTreeMixin implements AddFood {
  const _$AddFood(this.foodId, this.index);

  @override
  final int foodId;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.addFood(foodId: $foodId, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.addFood'))
      ..add(DiagnosticsProperty('foodId', foodId))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFood &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foodId) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $AddFoodCopyWith<AddFood> get copyWith =>
      _$AddFoodCopyWithImpl<AddFood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return addFood(foodId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (addFood != null) {
      return addFood(foodId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return addFood(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (addFood != null) {
      return addFood(this);
    }
    return orElse();
  }
}

abstract class AddFood implements OrderEvent {
  const factory AddFood(int foodId, int index) = _$AddFood;

  int get foodId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
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
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return addExtra(extraId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
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
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return addExtra(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
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
abstract class $SelectFoodCopyWith<$Res> {
  factory $SelectFoodCopyWith(
          SelectFood value, $Res Function(SelectFood) then) =
      _$SelectFoodCopyWithImpl<$Res>;
  $Res call({String name, Food food, int selectedIndex});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class _$SelectFoodCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $SelectFoodCopyWith<$Res> {
  _$SelectFoodCopyWithImpl(SelectFood _value, $Res Function(SelectFood) _then)
      : super(_value, (v) => _then(v as SelectFood));

  @override
  SelectFood get _value => super._value as SelectFood;

  @override
  $Res call({
    Object? name = freezed,
    Object? food = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(SelectFood(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
      selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$SelectFood with DiagnosticableTreeMixin implements SelectFood {
  const _$SelectFood(this.name, this.food, this.selectedIndex);

  @override
  final String name;
  @override
  final Food food;
  @override
  final int selectedIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.selectFood(name: $name, food: $food, selectedIndex: $selectedIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.selectFood'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('food', food))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectFood &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)) &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(food) ^
      const DeepCollectionEquality().hash(selectedIndex);

  @JsonKey(ignore: true)
  @override
  $SelectFoodCopyWith<SelectFood> get copyWith =>
      _$SelectFoodCopyWithImpl<SelectFood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return selectFood(name, food, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (selectFood != null) {
      return selectFood(name, food, selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return selectFood(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (selectFood != null) {
      return selectFood(this);
    }
    return orElse();
  }
}

abstract class SelectFood implements OrderEvent {
  const factory SelectFood(String name, Food food, int selectedIndex) =
      _$SelectFood;

  String get name => throw _privateConstructorUsedError;
  Food get food => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectFoodCopyWith<SelectFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectExtraCopyWith<$Res> {
  factory $SelectExtraCopyWith(
          SelectExtra value, $Res Function(SelectExtra) then) =
      _$SelectExtraCopyWithImpl<$Res>;
  $Res call({String name, Food extra, int index});

  $FoodCopyWith<$Res> get extra;
}

/// @nodoc
class _$SelectExtraCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $SelectExtraCopyWith<$Res> {
  _$SelectExtraCopyWithImpl(
      SelectExtra _value, $Res Function(SelectExtra) _then)
      : super(_value, (v) => _then(v as SelectExtra));

  @override
  SelectExtra get _value => super._value as SelectExtra;

  @override
  $Res call({
    Object? name = freezed,
    Object? extra = freezed,
    Object? index = freezed,
  }) {
    return _then(SelectExtra(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Food,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $FoodCopyWith<$Res> get extra {
    return $FoodCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value));
    });
  }
}

/// @nodoc

class _$SelectExtra with DiagnosticableTreeMixin implements SelectExtra {
  const _$SelectExtra(this.name, this.extra, this.index);

  @override
  final String name;
  @override
  final Food extra;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.selectExtra(name: $name, extra: $extra, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.selectExtra'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('extra', extra))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectExtra &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.extra, extra) ||
                const DeepCollectionEquality().equals(other.extra, extra)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(extra) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $SelectExtraCopyWith<SelectExtra> get copyWith =>
      _$SelectExtraCopyWithImpl<SelectExtra>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return selectExtra(name, extra, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (selectExtra != null) {
      return selectExtra(name, extra, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return selectExtra(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (selectExtra != null) {
      return selectExtra(this);
    }
    return orElse();
  }
}

abstract class SelectExtra implements OrderEvent {
  const factory SelectExtra(String name, Food extra, int index) = _$SelectExtra;

  String get name => throw _privateConstructorUsedError;
  Food get extra => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectExtraCopyWith<SelectExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodChangedCopyWith<$Res> {
  factory $FoodChangedCopyWith(
          FoodChanged value, $Res Function(FoodChanged) then) =
      _$FoodChangedCopyWithImpl<$Res>;
  $Res call({int foodId, int index});
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
    Object? index = freezed,
  }) {
    return _then(FoodChanged(
      foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FoodChanged with DiagnosticableTreeMixin implements FoodChanged {
  const _$FoodChanged(this.foodId, this.index);

  @override
  final int foodId;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.foodChanged(foodId: $foodId, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.foodChanged'))
      ..add(DiagnosticsProperty('foodId', foodId))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FoodChanged &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foodId) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $FoodChangedCopyWith<FoodChanged> get copyWith =>
      _$FoodChangedCopyWithImpl<FoodChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return foodChanged(foodId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (foodChanged != null) {
      return foodChanged(foodId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return foodChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (foodChanged != null) {
      return foodChanged(this);
    }
    return orElse();
  }
}

abstract class FoodChanged implements OrderEvent {
  const factory FoodChanged(int foodId, int index) = _$FoodChanged;

  int get foodId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodChangedCopyWith<FoodChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryFeeChangedCopyWith<$Res> {
  factory $DeliveryFeeChangedCopyWith(
          DeliveryFeeChanged value, $Res Function(DeliveryFeeChanged) then) =
      _$DeliveryFeeChangedCopyWithImpl<$Res>;
  $Res call({int deliveryFee});
}

/// @nodoc
class _$DeliveryFeeChangedCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $DeliveryFeeChangedCopyWith<$Res> {
  _$DeliveryFeeChangedCopyWithImpl(
      DeliveryFeeChanged _value, $Res Function(DeliveryFeeChanged) _then)
      : super(_value, (v) => _then(v as DeliveryFeeChanged));

  @override
  DeliveryFeeChanged get _value => super._value as DeliveryFeeChanged;

  @override
  $Res call({
    Object? deliveryFee = freezed,
  }) {
    return _then(DeliveryFeeChanged(
      deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeliveryFeeChanged
    with DiagnosticableTreeMixin
    implements DeliveryFeeChanged {
  const _$DeliveryFeeChanged(this.deliveryFee);

  @override
  final int deliveryFee;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.deliveryFeeChanged(deliveryFee: $deliveryFee)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.deliveryFeeChanged'))
      ..add(DiagnosticsProperty('deliveryFee', deliveryFee));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeliveryFeeChanged &&
            (identical(other.deliveryFee, deliveryFee) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee, deliveryFee)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deliveryFee);

  @JsonKey(ignore: true)
  @override
  $DeliveryFeeChangedCopyWith<DeliveryFeeChanged> get copyWith =>
      _$DeliveryFeeChangedCopyWithImpl<DeliveryFeeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return deliveryFeeChanged(deliveryFee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (deliveryFeeChanged != null) {
      return deliveryFeeChanged(deliveryFee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return deliveryFeeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (deliveryFeeChanged != null) {
      return deliveryFeeChanged(this);
    }
    return orElse();
  }
}

abstract class DeliveryFeeChanged implements OrderEvent {
  const factory DeliveryFeeChanged(int deliveryFee) = _$DeliveryFeeChanged;

  int get deliveryFee => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryFeeChangedCopyWith<DeliveryFeeChanged> get copyWith =>
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
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return extraChanged(extraId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
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
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return extraChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
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
abstract class $SendOrderToCartCopyWith<$Res> {
  factory $SendOrderToCartCopyWith(
          SendOrderToCart value, $Res Function(SendOrderToCart) then) =
      _$SendOrderToCartCopyWithImpl<$Res>;
  $Res call({int menuId, int index});
}

/// @nodoc
class _$SendOrderToCartCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $SendOrderToCartCopyWith<$Res> {
  _$SendOrderToCartCopyWithImpl(
      SendOrderToCart _value, $Res Function(SendOrderToCart) _then)
      : super(_value, (v) => _then(v as SendOrderToCart));

  @override
  SendOrderToCart get _value => super._value as SendOrderToCart;

  @override
  $Res call({
    Object? menuId = freezed,
    Object? index = freezed,
  }) {
    return _then(SendOrderToCart(
      menuId == freezed
          ? _value.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as int,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendOrderToCart
    with DiagnosticableTreeMixin
    implements SendOrderToCart {
  const _$SendOrderToCart(this.menuId, this.index);

  @override
  final int menuId;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.sendOrderToCart(menuId: $menuId, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.sendOrderToCart'))
      ..add(DiagnosticsProperty('menuId', menuId))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendOrderToCart &&
            (identical(other.menuId, menuId) ||
                const DeepCollectionEquality().equals(other.menuId, menuId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menuId) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $SendOrderToCartCopyWith<SendOrderToCart> get copyWith =>
      _$SendOrderToCartCopyWithImpl<SendOrderToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return sendOrderToCart(menuId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (sendOrderToCart != null) {
      return sendOrderToCart(menuId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return sendOrderToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (sendOrderToCart != null) {
      return sendOrderToCart(this);
    }
    return orElse();
  }
}

abstract class SendOrderToCart implements OrderEvent {
  const factory SendOrderToCart(int menuId, int index) = _$SendOrderToCart;

  int get menuId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOrderToCartCopyWith<SendOrderToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCompleteOrderToCartCopyWith<$Res> {
  factory $SendCompleteOrderToCartCopyWith(SendCompleteOrderToCart value,
          $Res Function(SendCompleteOrderToCart) then) =
      _$SendCompleteOrderToCartCopyWithImpl<$Res>;
  $Res call({String menu, int index});
}

/// @nodoc
class _$SendCompleteOrderToCartCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $SendCompleteOrderToCartCopyWith<$Res> {
  _$SendCompleteOrderToCartCopyWithImpl(SendCompleteOrderToCart _value,
      $Res Function(SendCompleteOrderToCart) _then)
      : super(_value, (v) => _then(v as SendCompleteOrderToCart));

  @override
  SendCompleteOrderToCart get _value => super._value as SendCompleteOrderToCart;

  @override
  $Res call({
    Object? menu = freezed,
    Object? index = freezed,
  }) {
    return _then(SendCompleteOrderToCart(
      menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendCompleteOrderToCart
    with DiagnosticableTreeMixin
    implements SendCompleteOrderToCart {
  const _$SendCompleteOrderToCart(this.menu, this.index);

  @override
  final String menu;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.sendCompleteOrderToCart(menu: $menu, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.sendCompleteOrderToCart'))
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendCompleteOrderToCart &&
            (identical(other.menu, menu) ||
                const DeepCollectionEquality().equals(other.menu, menu)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menu) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $SendCompleteOrderToCartCopyWith<SendCompleteOrderToCart> get copyWith =>
      _$SendCompleteOrderToCartCopyWithImpl<SendCompleteOrderToCart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return sendCompleteOrderToCart(menu, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (sendCompleteOrderToCart != null) {
      return sendCompleteOrderToCart(menu, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return sendCompleteOrderToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (sendCompleteOrderToCart != null) {
      return sendCompleteOrderToCart(this);
    }
    return orElse();
  }
}

abstract class SendCompleteOrderToCart implements OrderEvent {
  const factory SendCompleteOrderToCart(String menu, int index) =
      _$SendCompleteOrderToCart;

  String get menu => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendCompleteOrderToCartCopyWith<SendCompleteOrderToCart> get copyWith =>
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
    extends _$OrderEventCopyWithImpl<$Res>
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
    return 'OrderEvent.numberPhoneChanged(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.numberPhoneChanged'))
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
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return numberPhoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
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
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return numberPhoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (numberPhoneChanged != null) {
      return numberPhoneChanged(this);
    }
    return orElse();
  }
}

abstract class NumberPhoneChanged implements OrderEvent {
  const factory NumberPhoneChanged(int phone) = _$NumberPhoneChanged;

  int get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberPhoneChangedCopyWith<NumberPhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOfOrderChangedCopyWith<$Res> {
  factory $NumberOfOrderChangedCopyWith(NumberOfOrderChanged value,
          $Res Function(NumberOfOrderChanged) then) =
      _$NumberOfOrderChangedCopyWithImpl<$Res>;
  $Res call({int numberOfOrder});
}

/// @nodoc
class _$NumberOfOrderChangedCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $NumberOfOrderChangedCopyWith<$Res> {
  _$NumberOfOrderChangedCopyWithImpl(
      NumberOfOrderChanged _value, $Res Function(NumberOfOrderChanged) _then)
      : super(_value, (v) => _then(v as NumberOfOrderChanged));

  @override
  NumberOfOrderChanged get _value => super._value as NumberOfOrderChanged;

  @override
  $Res call({
    Object? numberOfOrder = freezed,
  }) {
    return _then(NumberOfOrderChanged(
      numberOfOrder == freezed
          ? _value.numberOfOrder
          : numberOfOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberOfOrderChanged
    with DiagnosticableTreeMixin
    implements NumberOfOrderChanged {
  const _$NumberOfOrderChanged(this.numberOfOrder);

  @override
  final int numberOfOrder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.numberOfOrderChanged(numberOfOrder: $numberOfOrder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.numberOfOrderChanged'))
      ..add(DiagnosticsProperty('numberOfOrder', numberOfOrder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberOfOrderChanged &&
            (identical(other.numberOfOrder, numberOfOrder) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfOrder, numberOfOrder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(numberOfOrder);

  @JsonKey(ignore: true)
  @override
  $NumberOfOrderChangedCopyWith<NumberOfOrderChanged> get copyWith =>
      _$NumberOfOrderChangedCopyWithImpl<NumberOfOrderChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return numberOfOrderChanged(numberOfOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (numberOfOrderChanged != null) {
      return numberOfOrderChanged(numberOfOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return numberOfOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (numberOfOrderChanged != null) {
      return numberOfOrderChanged(this);
    }
    return orElse();
  }
}

abstract class NumberOfOrderChanged implements OrderEvent {
  const factory NumberOfOrderChanged(int numberOfOrder) =
      _$NumberOfOrderChanged;

  int get numberOfOrder => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberOfOrderChangedCopyWith<NumberOfOrderChanged> get copyWith =>
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
class _$AddressChangedCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
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
    return 'OrderEvent.addressChanged(address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.addressChanged'))
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
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
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
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class AddressChanged implements OrderEvent {
  const factory AddressChanged(String address) = _$AddressChanged;

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderCopyWith<$Res> {
  factory $CreateOrderCopyWith(
          CreateOrder value, $Res Function(CreateOrder) then) =
      _$CreateOrderCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> body});
}

/// @nodoc
class _$CreateOrderCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $CreateOrderCopyWith<$Res> {
  _$CreateOrderCopyWithImpl(
      CreateOrder _value, $Res Function(CreateOrder) _then)
      : super(_value, (v) => _then(v as CreateOrder));

  @override
  CreateOrder get _value => super._value as CreateOrder;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(CreateOrder(
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateOrder with DiagnosticableTreeMixin implements CreateOrder {
  const _$CreateOrder(this.body);

  @override
  final Map<String, dynamic> body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.createOrder(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.createOrder'))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOrder &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  $CreateOrderCopyWith<CreateOrder> get copyWith =>
      _$CreateOrderCopyWithImpl<CreateOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return createOrder(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class CreateOrder implements OrderEvent {
  const factory CreateOrder(Map<String, dynamic> body) = _$CreateOrder;

  Map<String, dynamic> get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderCopyWith<CreateOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangedCopyWith<$Res> {
  factory $PriceChangedCopyWith(
          PriceChanged value, $Res Function(PriceChanged) then) =
      _$PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceChangedCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $PriceChangedCopyWith<$Res> {
  _$PriceChangedCopyWithImpl(
      PriceChanged _value, $Res Function(PriceChanged) _then)
      : super(_value, (v) => _then(v as PriceChanged));

  @override
  PriceChanged get _value => super._value as PriceChanged;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(PriceChanged(
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceChanged with DiagnosticableTreeMixin implements PriceChanged {
  const _$PriceChanged(this.price);

  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.priceChanged(price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.priceChanged'))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      _$PriceChangedCopyWithImpl<PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class PriceChanged implements OrderEvent {
  const factory PriceChanged(double price) = _$PriceChanged;

  double get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteLineCopyWith<$Res> {
  factory $DeleteLineCopyWith(
          DeleteLine value, $Res Function(DeleteLine) then) =
      _$DeleteLineCopyWithImpl<$Res>;
  $Res call({ShoppingCartLines shoppingCartLine, int index});

  $ShoppingCartLinesCopyWith<$Res> get shoppingCartLine;
}

/// @nodoc
class _$DeleteLineCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $DeleteLineCopyWith<$Res> {
  _$DeleteLineCopyWithImpl(DeleteLine _value, $Res Function(DeleteLine) _then)
      : super(_value, (v) => _then(v as DeleteLine));

  @override
  DeleteLine get _value => super._value as DeleteLine;

  @override
  $Res call({
    Object? shoppingCartLine = freezed,
    Object? index = freezed,
  }) {
    return _then(DeleteLine(
      shoppingCartLine == freezed
          ? _value.shoppingCartLine
          : shoppingCartLine // ignore: cast_nullable_to_non_nullable
              as ShoppingCartLines,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ShoppingCartLinesCopyWith<$Res> get shoppingCartLine {
    return $ShoppingCartLinesCopyWith<$Res>(_value.shoppingCartLine, (value) {
      return _then(_value.copyWith(shoppingCartLine: value));
    });
  }
}

/// @nodoc

class _$DeleteLine with DiagnosticableTreeMixin implements DeleteLine {
  const _$DeleteLine(this.shoppingCartLine, this.index);

  @override
  final ShoppingCartLines shoppingCartLine;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.deleteLine(shoppingCartLine: $shoppingCartLine, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.deleteLine'))
      ..add(DiagnosticsProperty('shoppingCartLine', shoppingCartLine))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteLine &&
            (identical(other.shoppingCartLine, shoppingCartLine) ||
                const DeepCollectionEquality()
                    .equals(other.shoppingCartLine, shoppingCartLine)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shoppingCartLine) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $DeleteLineCopyWith<DeleteLine> get copyWith =>
      _$DeleteLineCopyWithImpl<DeleteLine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return deleteLine(shoppingCartLine, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (deleteLine != null) {
      return deleteLine(shoppingCartLine, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return deleteLine(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (deleteLine != null) {
      return deleteLine(this);
    }
    return orElse();
  }
}

abstract class DeleteLine implements OrderEvent {
  const factory DeleteLine(ShoppingCartLines shoppingCartLine, int index) =
      _$DeleteLine;

  ShoppingCartLines get shoppingCartLine => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteLineCopyWith<DeleteLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReinitializeExtraAndFoodCopyWith<$Res> {
  factory $ReinitializeExtraAndFoodCopyWith(ReinitializeExtraAndFood value,
          $Res Function(ReinitializeExtraAndFood) then) =
      _$ReinitializeExtraAndFoodCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReinitializeExtraAndFoodCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $ReinitializeExtraAndFoodCopyWith<$Res> {
  _$ReinitializeExtraAndFoodCopyWithImpl(ReinitializeExtraAndFood _value,
      $Res Function(ReinitializeExtraAndFood) _then)
      : super(_value, (v) => _then(v as ReinitializeExtraAndFood));

  @override
  ReinitializeExtraAndFood get _value =>
      super._value as ReinitializeExtraAndFood;
}

/// @nodoc

class _$ReinitializeExtraAndFood
    with DiagnosticableTreeMixin
    implements ReinitializeExtraAndFood {
  const _$ReinitializeExtraAndFood();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.reinitializeExtraAndFood()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.reinitializeExtraAndFood'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReinitializeExtraAndFood);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return reinitializeExtraAndFood();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (reinitializeExtraAndFood != null) {
      return reinitializeExtraAndFood();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return reinitializeExtraAndFood(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (reinitializeExtraAndFood != null) {
      return reinitializeExtraAndFood(this);
    }
    return orElse();
  }
}

abstract class ReinitializeExtraAndFood implements OrderEvent {
  const factory ReinitializeExtraAndFood() = _$ReinitializeExtraAndFood;
}

/// @nodoc
abstract class $ReinitializeRadioBtnValuesCopyWith<$Res> {
  factory $ReinitializeRadioBtnValuesCopyWith(ReinitializeRadioBtnValues value,
          $Res Function(ReinitializeRadioBtnValues) then) =
      _$ReinitializeRadioBtnValuesCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$ReinitializeRadioBtnValuesCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $ReinitializeRadioBtnValuesCopyWith<$Res> {
  _$ReinitializeRadioBtnValuesCopyWithImpl(ReinitializeRadioBtnValues _value,
      $Res Function(ReinitializeRadioBtnValues) _then)
      : super(_value, (v) => _then(v as ReinitializeRadioBtnValues));

  @override
  ReinitializeRadioBtnValues get _value =>
      super._value as ReinitializeRadioBtnValues;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ReinitializeRadioBtnValues(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReinitializeRadioBtnValues
    with DiagnosticableTreeMixin
    implements ReinitializeRadioBtnValues {
  const _$ReinitializeRadioBtnValues(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.reinitializeRadioBtnValues(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'OrderEvent.reinitializeRadioBtnValues'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReinitializeRadioBtnValues &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $ReinitializeRadioBtnValuesCopyWith<ReinitializeRadioBtnValues>
      get copyWith =>
          _$ReinitializeRadioBtnValuesCopyWithImpl<ReinitializeRadioBtnValues>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return reinitializeRadioBtnValues(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (reinitializeRadioBtnValues != null) {
      return reinitializeRadioBtnValues(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return reinitializeRadioBtnValues(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (reinitializeRadioBtnValues != null) {
      return reinitializeRadioBtnValues(this);
    }
    return orElse();
  }
}

abstract class ReinitializeRadioBtnValues implements OrderEvent {
  const factory ReinitializeRadioBtnValues(bool value) =
      _$ReinitializeRadioBtnValues;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReinitializeRadioBtnValuesCopyWith<ReinitializeRadioBtnValues>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodPriceChangedCopyWith<$Res> {
  factory $FoodPriceChangedCopyWith(
          FoodPriceChanged value, $Res Function(FoodPriceChanged) then) =
      _$FoodPriceChangedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$FoodPriceChangedCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $FoodPriceChangedCopyWith<$Res> {
  _$FoodPriceChangedCopyWithImpl(
      FoodPriceChanged _value, $Res Function(FoodPriceChanged) _then)
      : super(_value, (v) => _then(v as FoodPriceChanged));

  @override
  FoodPriceChanged get _value => super._value as FoodPriceChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(FoodPriceChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FoodPriceChanged
    with DiagnosticableTreeMixin
    implements FoodPriceChanged {
  const _$FoodPriceChanged(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.foodPriceChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.foodPriceChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FoodPriceChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $FoodPriceChangedCopyWith<FoodPriceChanged> get copyWith =>
      _$FoodPriceChangedCopyWithImpl<FoodPriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int foodId, int index) addFood,
    required TResult Function(int extraId) addExtra,
    required TResult Function(String name, Food food, int selectedIndex)
        selectFood,
    required TResult Function(String name, Food extra, int index) selectExtra,
    required TResult Function(int foodId, int index) foodChanged,
    required TResult Function(int deliveryFee) deliveryFeeChanged,
    required TResult Function(int extraId) extraChanged,
    required TResult Function(int menuId, int index) sendOrderToCart,
    required TResult Function(String menu, int index) sendCompleteOrderToCart,
    required TResult Function(int phone) numberPhoneChanged,
    required TResult Function(int numberOfOrder) numberOfOrderChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(Map<String, dynamic> body) createOrder,
    required TResult Function(double price) priceChanged,
    required TResult Function(ShoppingCartLines shoppingCartLine, int index)
        deleteLine,
    required TResult Function() reinitializeExtraAndFood,
    required TResult Function(bool value) reinitializeRadioBtnValues,
    required TResult Function(bool value) foodPriceChanged,
  }) {
    return foodPriceChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int foodId, int index)? addFood,
    TResult Function(int extraId)? addExtra,
    TResult Function(String name, Food food, int selectedIndex)? selectFood,
    TResult Function(String name, Food extra, int index)? selectExtra,
    TResult Function(int foodId, int index)? foodChanged,
    TResult Function(int deliveryFee)? deliveryFeeChanged,
    TResult Function(int extraId)? extraChanged,
    TResult Function(int menuId, int index)? sendOrderToCart,
    TResult Function(String menu, int index)? sendCompleteOrderToCart,
    TResult Function(int phone)? numberPhoneChanged,
    TResult Function(int numberOfOrder)? numberOfOrderChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(Map<String, dynamic> body)? createOrder,
    TResult Function(double price)? priceChanged,
    TResult Function(ShoppingCartLines shoppingCartLine, int index)? deleteLine,
    TResult Function()? reinitializeExtraAndFood,
    TResult Function(bool value)? reinitializeRadioBtnValues,
    TResult Function(bool value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (foodPriceChanged != null) {
      return foodPriceChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFood value) addFood,
    required TResult Function(AddExtra value) addExtra,
    required TResult Function(SelectFood value) selectFood,
    required TResult Function(SelectExtra value) selectExtra,
    required TResult Function(FoodChanged value) foodChanged,
    required TResult Function(DeliveryFeeChanged value) deliveryFeeChanged,
    required TResult Function(ExtraChanged value) extraChanged,
    required TResult Function(SendOrderToCart value) sendOrderToCart,
    required TResult Function(SendCompleteOrderToCart value)
        sendCompleteOrderToCart,
    required TResult Function(NumberPhoneChanged value) numberPhoneChanged,
    required TResult Function(NumberOfOrderChanged value) numberOfOrderChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(DeleteLine value) deleteLine,
    required TResult Function(ReinitializeExtraAndFood value)
        reinitializeExtraAndFood,
    required TResult Function(ReinitializeRadioBtnValues value)
        reinitializeRadioBtnValues,
    required TResult Function(FoodPriceChanged value) foodPriceChanged,
  }) {
    return foodPriceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFood value)? addFood,
    TResult Function(AddExtra value)? addExtra,
    TResult Function(SelectFood value)? selectFood,
    TResult Function(SelectExtra value)? selectExtra,
    TResult Function(FoodChanged value)? foodChanged,
    TResult Function(DeliveryFeeChanged value)? deliveryFeeChanged,
    TResult Function(ExtraChanged value)? extraChanged,
    TResult Function(SendOrderToCart value)? sendOrderToCart,
    TResult Function(SendCompleteOrderToCart value)? sendCompleteOrderToCart,
    TResult Function(NumberPhoneChanged value)? numberPhoneChanged,
    TResult Function(NumberOfOrderChanged value)? numberOfOrderChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(DeleteLine value)? deleteLine,
    TResult Function(ReinitializeExtraAndFood value)? reinitializeExtraAndFood,
    TResult Function(ReinitializeRadioBtnValues value)?
        reinitializeRadioBtnValues,
    TResult Function(FoodPriceChanged value)? foodPriceChanged,
    required TResult orElse(),
  }) {
    if (foodPriceChanged != null) {
      return foodPriceChanged(this);
    }
    return orElse();
  }
}

abstract class FoodPriceChanged implements OrderEvent {
  const factory FoodPriceChanged(bool value) = _$FoodPriceChanged;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodPriceChangedCopyWith<FoodPriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderStateTearOff {
  const _$OrderStateTearOff();

  _OrderState call(
      {required int foodId,
      required int extraId,
      required int menu,
      required int deliveryFee,
      required int quantity,
      required double? price,
      required int page,
      required int index,
      required int indexOfLine,
      required bool isFoodPriceChanged,
      required bool radioBtnValue,
      required int numberOfOrder,
      required Map<int, int> foods,
      required List<int> extras,
      required Map<int, List<Food>> selectedExtras,
      required Map<int, List<Food>> selectedFood,
      required bool hasSentOrderToCart,
      required bool hasSentCompleteOrderToCart,
      required bool isLineDeleted,
      required int phone,
      required String address,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      required Option<Either<ServerFailure, bool>>
          deleteItemFailureOrSuccessOption,
      String? error,
      List<Lines>? lines,
      List<ShoppingCartLines>? shoppingCartLines}) {
    return _OrderState(
      foodId: foodId,
      extraId: extraId,
      menu: menu,
      deliveryFee: deliveryFee,
      quantity: quantity,
      price: price,
      page: page,
      index: index,
      indexOfLine: indexOfLine,
      isFoodPriceChanged: isFoodPriceChanged,
      radioBtnValue: radioBtnValue,
      numberOfOrder: numberOfOrder,
      foods: foods,
      extras: extras,
      selectedExtras: selectedExtras,
      selectedFood: selectedFood,
      hasSentOrderToCart: hasSentOrderToCart,
      hasSentCompleteOrderToCart: hasSentCompleteOrderToCart,
      isLineDeleted: isLineDeleted,
      phone: phone,
      address: address,
      createOrderFailureOrSuccess: createOrderFailureOrSuccess,
      deleteItemFailureOrSuccessOption: deleteItemFailureOrSuccessOption,
      error: error,
      lines: lines,
      shoppingCartLines: shoppingCartLines,
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
  int get deliveryFee => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get indexOfLine => throw _privateConstructorUsedError;
  bool get isFoodPriceChanged => throw _privateConstructorUsedError;
  bool get radioBtnValue => throw _privateConstructorUsedError;
  int get numberOfOrder => throw _privateConstructorUsedError;
  Map<int, int> get foods => throw _privateConstructorUsedError;
  List<int> get extras => throw _privateConstructorUsedError;
  Map<int, List<Food>> get selectedExtras => throw _privateConstructorUsedError;
  Map<int, List<Food>> get selectedFood => throw _privateConstructorUsedError;
  bool get hasSentOrderToCart => throw _privateConstructorUsedError;
  bool get hasSentCompleteOrderToCart => throw _privateConstructorUsedError;
  bool get isLineDeleted => throw _privateConstructorUsedError;
  int get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createOrderFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, bool>> get deleteItemFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Lines>? get lines => throw _privateConstructorUsedError;
  List<ShoppingCartLines>? get shoppingCartLines =>
      throw _privateConstructorUsedError;

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
      int deliveryFee,
      int quantity,
      double? price,
      int page,
      int index,
      int indexOfLine,
      bool isFoodPriceChanged,
      bool radioBtnValue,
      int numberOfOrder,
      Map<int, int> foods,
      List<int> extras,
      Map<int, List<Food>> selectedExtras,
      Map<int, List<Food>> selectedFood,
      bool hasSentOrderToCart,
      bool hasSentCompleteOrderToCart,
      bool isLineDeleted,
      int phone,
      String address,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      Option<Either<ServerFailure, bool>> deleteItemFailureOrSuccessOption,
      String? error,
      List<Lines>? lines,
      List<ShoppingCartLines>? shoppingCartLines});
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
    Object? deliveryFee = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? page = freezed,
    Object? index = freezed,
    Object? indexOfLine = freezed,
    Object? isFoodPriceChanged = freezed,
    Object? radioBtnValue = freezed,
    Object? numberOfOrder = freezed,
    Object? foods = freezed,
    Object? extras = freezed,
    Object? selectedExtras = freezed,
    Object? selectedFood = freezed,
    Object? hasSentOrderToCart = freezed,
    Object? hasSentCompleteOrderToCart = freezed,
    Object? isLineDeleted = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? createOrderFailureOrSuccess = freezed,
    Object? deleteItemFailureOrSuccessOption = freezed,
    Object? error = freezed,
    Object? lines = freezed,
    Object? shoppingCartLines = freezed,
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
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      indexOfLine: indexOfLine == freezed
          ? _value.indexOfLine
          : indexOfLine // ignore: cast_nullable_to_non_nullable
              as int,
      isFoodPriceChanged: isFoodPriceChanged == freezed
          ? _value.isFoodPriceChanged
          : isFoodPriceChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      radioBtnValue: radioBtnValue == freezed
          ? _value.radioBtnValue
          : radioBtnValue // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfOrder: numberOfOrder == freezed
          ? _value.numberOfOrder
          : numberOfOrder // ignore: cast_nullable_to_non_nullable
              as int,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedExtras: selectedExtras == freezed
          ? _value.selectedExtras
          : selectedExtras // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Food>>,
      selectedFood: selectedFood == freezed
          ? _value.selectedFood
          : selectedFood // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Food>>,
      hasSentOrderToCart: hasSentOrderToCart == freezed
          ? _value.hasSentOrderToCart
          : hasSentOrderToCart // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSentCompleteOrderToCart: hasSentCompleteOrderToCart == freezed
          ? _value.hasSentCompleteOrderToCart
          : hasSentCompleteOrderToCart // ignore: cast_nullable_to_non_nullable
              as bool,
      isLineDeleted: isLineDeleted == freezed
          ? _value.isLineDeleted
          : isLineDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createOrderFailureOrSuccess: createOrderFailureOrSuccess == freezed
          ? _value.createOrderFailureOrSuccess
          : createOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      deleteItemFailureOrSuccessOption: deleteItemFailureOrSuccessOption ==
              freezed
          ? _value.deleteItemFailureOrSuccessOption
          : deleteItemFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, bool>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
      shoppingCartLines: shoppingCartLines == freezed
          ? _value.shoppingCartLines
          : shoppingCartLines // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartLines>?,
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
      int deliveryFee,
      int quantity,
      double? price,
      int page,
      int index,
      int indexOfLine,
      bool isFoodPriceChanged,
      bool radioBtnValue,
      int numberOfOrder,
      Map<int, int> foods,
      List<int> extras,
      Map<int, List<Food>> selectedExtras,
      Map<int, List<Food>> selectedFood,
      bool hasSentOrderToCart,
      bool hasSentCompleteOrderToCart,
      bool isLineDeleted,
      int phone,
      String address,
      Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      Option<Either<ServerFailure, bool>> deleteItemFailureOrSuccessOption,
      String? error,
      List<Lines>? lines,
      List<ShoppingCartLines>? shoppingCartLines});
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
    Object? deliveryFee = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? page = freezed,
    Object? index = freezed,
    Object? indexOfLine = freezed,
    Object? isFoodPriceChanged = freezed,
    Object? radioBtnValue = freezed,
    Object? numberOfOrder = freezed,
    Object? foods = freezed,
    Object? extras = freezed,
    Object? selectedExtras = freezed,
    Object? selectedFood = freezed,
    Object? hasSentOrderToCart = freezed,
    Object? hasSentCompleteOrderToCart = freezed,
    Object? isLineDeleted = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? createOrderFailureOrSuccess = freezed,
    Object? deleteItemFailureOrSuccessOption = freezed,
    Object? error = freezed,
    Object? lines = freezed,
    Object? shoppingCartLines = freezed,
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
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      indexOfLine: indexOfLine == freezed
          ? _value.indexOfLine
          : indexOfLine // ignore: cast_nullable_to_non_nullable
              as int,
      isFoodPriceChanged: isFoodPriceChanged == freezed
          ? _value.isFoodPriceChanged
          : isFoodPriceChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      radioBtnValue: radioBtnValue == freezed
          ? _value.radioBtnValue
          : radioBtnValue // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfOrder: numberOfOrder == freezed
          ? _value.numberOfOrder
          : numberOfOrder // ignore: cast_nullable_to_non_nullable
              as int,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedExtras: selectedExtras == freezed
          ? _value.selectedExtras
          : selectedExtras // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Food>>,
      selectedFood: selectedFood == freezed
          ? _value.selectedFood
          : selectedFood // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Food>>,
      hasSentOrderToCart: hasSentOrderToCart == freezed
          ? _value.hasSentOrderToCart
          : hasSentOrderToCart // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSentCompleteOrderToCart: hasSentCompleteOrderToCart == freezed
          ? _value.hasSentCompleteOrderToCart
          : hasSentCompleteOrderToCart // ignore: cast_nullable_to_non_nullable
              as bool,
      isLineDeleted: isLineDeleted == freezed
          ? _value.isLineDeleted
          : isLineDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createOrderFailureOrSuccess: createOrderFailureOrSuccess == freezed
          ? _value.createOrderFailureOrSuccess
          : createOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>,
      deleteItemFailureOrSuccessOption: deleteItemFailureOrSuccessOption ==
              freezed
          ? _value.deleteItemFailureOrSuccessOption
          : deleteItemFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, bool>>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Lines>?,
      shoppingCartLines: shoppingCartLines == freezed
          ? _value.shoppingCartLines
          : shoppingCartLines // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartLines>?,
    ));
  }
}

/// @nodoc

class _$_OrderState with DiagnosticableTreeMixin implements _OrderState {
  const _$_OrderState(
      {required this.foodId,
      required this.extraId,
      required this.menu,
      required this.deliveryFee,
      required this.quantity,
      required this.price,
      required this.page,
      required this.index,
      required this.indexOfLine,
      required this.isFoodPriceChanged,
      required this.radioBtnValue,
      required this.numberOfOrder,
      required this.foods,
      required this.extras,
      required this.selectedExtras,
      required this.selectedFood,
      required this.hasSentOrderToCart,
      required this.hasSentCompleteOrderToCart,
      required this.isLineDeleted,
      required this.phone,
      required this.address,
      required this.createOrderFailureOrSuccess,
      required this.deleteItemFailureOrSuccessOption,
      this.error,
      this.lines,
      this.shoppingCartLines});

  @override
  final int foodId;
  @override
  final int extraId;
  @override
  final int menu;
  @override
  final int deliveryFee;
  @override
  final int quantity;
  @override
  final double? price;
  @override
  final int page;
  @override
  final int index;
  @override
  final int indexOfLine;
  @override
  final bool isFoodPriceChanged;
  @override
  final bool radioBtnValue;
  @override
  final int numberOfOrder;
  @override
  final Map<int, int> foods;
  @override
  final List<int> extras;
  @override
  final Map<int, List<Food>> selectedExtras;
  @override
  final Map<int, List<Food>> selectedFood;
  @override
  final bool hasSentOrderToCart;
  @override
  final bool hasSentCompleteOrderToCart;
  @override
  final bool isLineDeleted;
  @override
  final int phone;
  @override
  final String address;
  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>
      createOrderFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, bool>> deleteItemFailureOrSuccessOption;
  @override
  final String? error;
  @override
  final List<Lines>? lines;
  @override
  final List<ShoppingCartLines>? shoppingCartLines;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState(foodId: $foodId, extraId: $extraId, menu: $menu, deliveryFee: $deliveryFee, quantity: $quantity, price: $price, page: $page, index: $index, indexOfLine: $indexOfLine, isFoodPriceChanged: $isFoodPriceChanged, radioBtnValue: $radioBtnValue, numberOfOrder: $numberOfOrder, foods: $foods, extras: $extras, selectedExtras: $selectedExtras, selectedFood: $selectedFood, hasSentOrderToCart: $hasSentOrderToCart, hasSentCompleteOrderToCart: $hasSentCompleteOrderToCart, isLineDeleted: $isLineDeleted, phone: $phone, address: $address, createOrderFailureOrSuccess: $createOrderFailureOrSuccess, deleteItemFailureOrSuccessOption: $deleteItemFailureOrSuccessOption, error: $error, lines: $lines, shoppingCartLines: $shoppingCartLines)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState'))
      ..add(DiagnosticsProperty('foodId', foodId))
      ..add(DiagnosticsProperty('extraId', extraId))
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('deliveryFee', deliveryFee))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('indexOfLine', indexOfLine))
      ..add(DiagnosticsProperty('isFoodPriceChanged', isFoodPriceChanged))
      ..add(DiagnosticsProperty('radioBtnValue', radioBtnValue))
      ..add(DiagnosticsProperty('numberOfOrder', numberOfOrder))
      ..add(DiagnosticsProperty('foods', foods))
      ..add(DiagnosticsProperty('extras', extras))
      ..add(DiagnosticsProperty('selectedExtras', selectedExtras))
      ..add(DiagnosticsProperty('selectedFood', selectedFood))
      ..add(DiagnosticsProperty('hasSentOrderToCart', hasSentOrderToCart))
      ..add(DiagnosticsProperty(
          'hasSentCompleteOrderToCart', hasSentCompleteOrderToCart))
      ..add(DiagnosticsProperty('isLineDeleted', isLineDeleted))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty(
          'createOrderFailureOrSuccess', createOrderFailureOrSuccess))
      ..add(DiagnosticsProperty(
          'deleteItemFailureOrSuccessOption', deleteItemFailureOrSuccessOption))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('lines', lines))
      ..add(DiagnosticsProperty('shoppingCartLines', shoppingCartLines));
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
            (identical(other.deliveryFee, deliveryFee) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee, deliveryFee)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.indexOfLine, indexOfLine) ||
                const DeepCollectionEquality()
                    .equals(other.indexOfLine, indexOfLine)) &&
            (identical(other.isFoodPriceChanged, isFoodPriceChanged) ||
                const DeepCollectionEquality()
                    .equals(other.isFoodPriceChanged, isFoodPriceChanged)) &&
            (identical(other.radioBtnValue, radioBtnValue) ||
                const DeepCollectionEquality()
                    .equals(other.radioBtnValue, radioBtnValue)) &&
            (identical(other.numberOfOrder, numberOfOrder) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfOrder, numberOfOrder)) &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.selectedExtras, selectedExtras) ||
                const DeepCollectionEquality()
                    .equals(other.selectedExtras, selectedExtras)) &&
            (identical(other.selectedFood, selectedFood) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFood, selectedFood)) &&
            (identical(other.hasSentOrderToCart, hasSentOrderToCart) ||
                const DeepCollectionEquality()
                    .equals(other.hasSentOrderToCart, hasSentOrderToCart)) &&
            (identical(other.hasSentCompleteOrderToCart, hasSentCompleteOrderToCart) ||
                const DeepCollectionEquality().equals(
                    other.hasSentCompleteOrderToCart,
                    hasSentCompleteOrderToCart)) &&
            (identical(other.isLineDeleted, isLineDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isLineDeleted, isLineDeleted)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.createOrderFailureOrSuccess, createOrderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.createOrderFailureOrSuccess,
                    createOrderFailureOrSuccess)) &&
            (identical(other.deleteItemFailureOrSuccessOption, deleteItemFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteItemFailureOrSuccessOption, deleteItemFailureOrSuccessOption)) &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.lines, lines) || const DeepCollectionEquality().equals(other.lines, lines)) &&
            (identical(other.shoppingCartLines, shoppingCartLines) || const DeepCollectionEquality().equals(other.shoppingCartLines, shoppingCartLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foodId) ^
      const DeepCollectionEquality().hash(extraId) ^
      const DeepCollectionEquality().hash(menu) ^
      const DeepCollectionEquality().hash(deliveryFee) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(indexOfLine) ^
      const DeepCollectionEquality().hash(isFoodPriceChanged) ^
      const DeepCollectionEquality().hash(radioBtnValue) ^
      const DeepCollectionEquality().hash(numberOfOrder) ^
      const DeepCollectionEquality().hash(foods) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(selectedExtras) ^
      const DeepCollectionEquality().hash(selectedFood) ^
      const DeepCollectionEquality().hash(hasSentOrderToCart) ^
      const DeepCollectionEquality().hash(hasSentCompleteOrderToCart) ^
      const DeepCollectionEquality().hash(isLineDeleted) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createOrderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(deleteItemFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(lines) ^
      const DeepCollectionEquality().hash(shoppingCartLines);

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
      required int deliveryFee,
      required int quantity,
      required double? price,
      required int page,
      required int index,
      required int indexOfLine,
      required bool isFoodPriceChanged,
      required bool radioBtnValue,
      required int numberOfOrder,
      required Map<int, int> foods,
      required List<int> extras,
      required Map<int, List<Food>> selectedExtras,
      required Map<int, List<Food>> selectedFood,
      required bool hasSentOrderToCart,
      required bool hasSentCompleteOrderToCart,
      required bool isLineDeleted,
      required int phone,
      required String address,
      required Option<Either<ServerFailure, Map<String, dynamic>>>
          createOrderFailureOrSuccess,
      required Option<Either<ServerFailure, bool>>
          deleteItemFailureOrSuccessOption,
      String? error,
      List<Lines>? lines,
      List<ShoppingCartLines>? shoppingCartLines}) = _$_OrderState;

  @override
  int get foodId => throw _privateConstructorUsedError;
  @override
  int get extraId => throw _privateConstructorUsedError;
  @override
  int get menu => throw _privateConstructorUsedError;
  @override
  int get deliveryFee => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  int get indexOfLine => throw _privateConstructorUsedError;
  @override
  bool get isFoodPriceChanged => throw _privateConstructorUsedError;
  @override
  bool get radioBtnValue => throw _privateConstructorUsedError;
  @override
  int get numberOfOrder => throw _privateConstructorUsedError;
  @override
  Map<int, int> get foods => throw _privateConstructorUsedError;
  @override
  List<int> get extras => throw _privateConstructorUsedError;
  @override
  Map<int, List<Food>> get selectedExtras => throw _privateConstructorUsedError;
  @override
  Map<int, List<Food>> get selectedFood => throw _privateConstructorUsedError;
  @override
  bool get hasSentOrderToCart => throw _privateConstructorUsedError;
  @override
  bool get hasSentCompleteOrderToCart => throw _privateConstructorUsedError;
  @override
  bool get isLineDeleted => throw _privateConstructorUsedError;
  @override
  int get phone => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>
      get createOrderFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerFailure, bool>> get deleteItemFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<Lines>? get lines => throw _privateConstructorUsedError;
  @override
  List<ShoppingCartLines>? get shoppingCartLines =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
