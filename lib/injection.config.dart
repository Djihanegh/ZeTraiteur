// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/menu/menu_bloc.dart' as _i7;
import 'application/order/order_bloc.dart' as _i8;
import 'application/register/register_bloc.dart' as _i9;
import 'domain/menu/i_menu_facade.dart' as _i3;
import 'domain/register/i_register_facade.dart' as _i5;
import 'infrastructure/menu/menu_facade.dart' as _i4;
import 'infrastructure/register/register_facade.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IMenuFacade>(() => _i4.MenuFacade());
  gh.lazySingleton<_i5.IRegisterFacade>(() => _i6.RegisterFacade());
  gh.factory<_i7.MenuBloc>(() => _i7.MenuBloc(get<_i3.IMenuFacade>()));
  gh.factory<_i8.OrderBloc>(() => _i8.OrderBloc());
  gh.factory<_i9.RegisterBloc>(
      () => _i9.RegisterBloc(get<_i5.IRegisterFacade>()));
  return get;
}
