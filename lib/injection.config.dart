// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/menu/menu_bloc.dart' as _i5;
import 'application/order/order_bloc.dart' as _i6;
import 'application/register/register_bloc.dart' as _i7;
import 'domain/menu/i_menu_facade.dart' as _i3;
import 'infrastructure/menu/menu_facade.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IMenuFacade>(() => _i4.MenuFacade());
  gh.factory<_i5.MenuBloc>(() => _i5.MenuBloc(get<_i3.IMenuFacade>()));
  gh.factory<_i6.OrderBloc>(() => _i6.OrderBloc());
  gh.factory<_i7.RegisterBloc>(() => _i7.RegisterBloc(get<dynamic>()));
  return get;
}
